import 'package:flutter/material.dart';
import 'package:flutter_graphql_swapi/ui/ui.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key key,
    this.text,
  })  : assert(text != null),
        super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Cell(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
      alignment: Alignment.centerLeft,
      child: Text(text, style: TextStyles.h2Default),
    );
  }
}
