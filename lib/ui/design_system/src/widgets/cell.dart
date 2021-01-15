import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_graphql_swapi/ui/ui.dart';

class Cell extends StatelessWidget {
  const Cell({
    Key key,
    this.alignment = Alignment.center,
    this.internalHeight,
    this.child,
    this.showDivider = false,
    this.trailing,
  })  : assert(alignment != null),
        assert(showDivider != null),
        super(key: key);

  final Alignment alignment;
  final Widget child;
  final double internalHeight;
  final bool showDivider;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    const dividerHeight = 1.0;
    const padding = 16.0;

    const trailingWidth = 36.0;

    Widget tree = Container(
      width: double.infinity,
      height: internalHeight,
      margin: const EdgeInsets.all(16),
      alignment: alignment,
      child: child,
    );

    tree = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: internalHeight != null ? internalHeight + 2 * padding : null,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: internalHeight,
              margin: const EdgeInsets.all(16),
              alignment: alignment,
              child: child,
            ),
          ),
          if (trailing != null)
            SizedBox(
              width: trailingWidth,
              height: internalHeight,
              child: trailing,
            ),
        ],
      ),
    );

    if (showDivider) {
      tree = Column(
        children: [
          tree,
          Padding(
            padding: const EdgeInsets.only(left: padding),
            child: Divider(
              color: AppColors.light,
              height: dividerHeight,
            ),
          ),
        ],
      );
    }
    return tree;
  }
}
