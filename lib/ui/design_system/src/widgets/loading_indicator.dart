import 'package:flutter/cupertino.dart';
import 'package:flutter_graphql_swapi/ui/design_system/design_system.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const height = 24.0;
    return Container(
      height: height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
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
