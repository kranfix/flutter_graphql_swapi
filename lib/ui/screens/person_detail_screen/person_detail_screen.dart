import 'package:flutter/material.dart';
import 'package:flutter_graphql_swapi/data/data.dart';
import 'package:flutter_graphql_swapi/ui/ui.dart';

class PersonDetailScreen extends StatelessWidget {
  const PersonDetailScreen({
    Key key,
    @required this.person,
  })  : assert(person != null),
        super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: person.name,
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SectionHeader(text: 'General Information'),
              InfoCell(category: 'Eye Color', value: person.eyeColor),
              InfoCell(category: 'Hair Color', value: person.hairColor),
              InfoCell(category: 'Skin Color', value: person.skinColor),
              InfoCell(category: 'Birth Year', value: person.birthYear),
              SectionHeader(text: 'Vehicles'),
              if (person.vehicleConnection.vehicles.isNotEmpty)
                for (final v in person.vehicleConnection.vehicles)
                  InfoCell(category: v.name, value: '')
              else
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'There is no vehicle',
                    style: TextStyles.p1Default,
                    textAlign: TextAlign.left,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  static Future<void> navigate(BuildContext context, {Person person}) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PersonDetailScreen(person: person),
      ),
    );
  }
}
