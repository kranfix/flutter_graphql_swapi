import 'package:flutter/cupertino.dart';
import 'package:flutter_graphql_swapi/ui/design_system/design_system.dart';

class Loader extends StatelessWidget {
  const Loader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const height = 72.0;
    return Container(
      height: height,
      child: Row(
        children: [
          SizedBox(
            height: height,
            width: height,
            child: CupertinoActivityIndicator(),
          ),
          SizedBox(width: 8),
          Text(
            'Loading',
            style: TextStyles.h2LowEmphasis,
          ),
        ],
      ),
    );
  }
}
