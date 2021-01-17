import 'package:flutter/foundation.dart';
import 'package:flutter_graphql_swapi/data/data.dart';
import 'package:simple_gql/simple_gql.dart';

enum PersonListStatus { loaded, loading, error }

class PersonList extends ChangeNotifier {
  PersonList(this.gqlClient)
      : peopleEdges = [],
        _status = PersonListStatus.loading,
        assert(gqlClient != null) {
    print('gqlClient: is null ${gqlClient == null}');
    fetch();
  }

  final List<PeopleEdge> peopleEdges;
  GQLClient gqlClient;

  PersonListStatus _status;
  PersonListStatus get status => _status;

  Future<void> fetch({int first, String cursor}) async {
    _status = PersonListStatus.loading;
    notifyListeners();

    try {
      final result = await gqlClient.query(
        query: _allPeopleQuery,
        variables: <String, dynamic>{
          'first': first ?? 5,
          if (cursor != null) 'cursor': cursor
        },
      );
      print(result);
      final _people = result.data['allPeople'] as Map<String, dynamic>;
      final peopleConnection = PeopleConnection.fromJson(_people);
      peopleEdges.addAll(peopleConnection.edges);
      _status = PersonListStatus.loaded;
      return notifyListeners();
    } catch (_) {
      _status = PersonListStatus.error;
      return notifyListeners();
    }
  }

  Future<void> fetchMore() async {
    print('dsdsds');
    if (peopleEdges.isEmpty) {
      return fetch();
    }
    return fetch(cursor: peopleEdges.last.cursor);
  }
}

final _allPeopleQuery = r'''
query AllPeople($first: Int!, $after: String) {
  allPeople(first: $first, after: $after) {
    pageInfo {
      hasNextPage
      hasPreviousPage
      startCursor
      endCursor
    }
    totalCount
    edges {
      cursor
      node {
        ...PeopleData
      }
    }
  }
}

fragment PeopleData on Person {
  name
  birthYear
  eyeColor
  hairColor
  skinColor
  species{
    name
  }
  homeworld {
    name
  }
  vehicleConnection {
    vehicles {
      name
    }
  }
}''';
