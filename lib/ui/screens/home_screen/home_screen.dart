import 'package:flutter/material.dart';
import 'package:flutter_graphql_swapi/domain/domain.dart';
import 'package:flutter_graphql_swapi/ui/ui.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();
  double lastOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      //print(lastOffset < _scrollController.position.pixels ? "down" : "up");
      lastOffset = _scrollController.position.pixels;
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent - 60) {
        final _people = context.watch<PersonList>();
        _people.fetchMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _people = context.watch<PersonList>();
    return AppScaffold(
      title: 'People of Star Wars',
      body: Center(
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: _scrollController,
          children: [
            for (final p in _people.peopleEdges.map((edge) => edge.node))
              ListItemCell(
                title: p.name,
                subtitle:
                    '${p.species?.name ?? 'Human'} from ${p.homeworld.name}',
                onPressed: () =>
                    PersonDetailScreen.navigate(context, person: p),
              ),
            if (_people.status == PersonListStatus.loading)
              const LoadingCell()
            else if (_people.status == PersonListStatus.error)
              const NoticedCell(),
          ],
        ),
      ),
    );
  }
}
