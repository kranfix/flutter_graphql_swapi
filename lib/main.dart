import 'package:flutter/material.dart';
import 'package:flutter_graphql_swapi/domain/domain.dart';
import 'package:flutter_graphql_swapi/ui/ui.dart';
import 'package:simple_gql/simple_gql.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const StarWarsApp());
}

class StarWarsApp extends StatelessWidget {
  const StarWarsApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => GQLClient(
            url: 'https://swapi-graphql.netlify.app/.netlify/functions/index',
          ),
        ),
        ChangeNotifierProxyProvider<GQLClient, PersonList>(
          create: (ctx) => PersonList(ctx.read<GQLClient>()),
          update: (ctx, gqlClient, personList) =>
              personList..gqlClient = gqlClient,
        ),
      ],
      child: MaterialApp(
        title: 'Flutter GraphQL SWAPI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
