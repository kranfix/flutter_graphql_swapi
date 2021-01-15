import 'package:flutter/widgets.dart';
import 'package:flutter_graphql_swapi/ui/design_system/design_system.dart';

class NoticedCell extends StatelessWidget {
  const NoticedCell({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cell(
      child: Text(
        'Failed to Load Data',
        style: TextStyles.h2HighEmphasis,
      ),
    );
  }
}
