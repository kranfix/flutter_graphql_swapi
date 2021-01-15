import 'package:flutter/material.dart';
import 'package:flutter_graphql_swapi/ui/ui.dart';

/// The InfoCell is the `data cell` but with another name to avoid
/// conflict with flutter's data table widgets
class InfoCell extends StatelessWidget {
  const InfoCell({
    Key key,
    @required this.category,
    @required this.value,
  })  : assert(category != null),
        assert(value != null),
        super(key: key);

  final String category;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Cell(
      showDivider: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(category, style: TextStyles.h2LowEmphasis),
          Text(value, style: TextStyles.h2Default),
        ],
      ),
    );
  }
}
