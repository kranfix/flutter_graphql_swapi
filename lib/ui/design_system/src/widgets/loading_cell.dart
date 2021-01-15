import 'package:flutter/widgets.dart';
import 'package:flutter_graphql_swapi/ui/design_system/design_system.dart';

class LoadingCell extends StatelessWidget {
  const LoadingCell({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cell(
      child: LoadingIndicator(),
    );
  }
}
