import 'package:flutter/material.dart';
import 'package:flutter_graphql_swapi/ui/ui.dart';

class ListItemCell extends StatelessWidget {
  const ListItemCell({
    Key key,
    @required this.onPressed,
    @required this.title,
    @required this.subtitle,
  })  : assert(onPressed != null),
        assert(title != null),
        assert(subtitle != null),
        super(key: key);

  final VoidCallback onPressed;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Cell(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyles.h2Default),
          Text(subtitle, style: TextStyles.p1LowEmphasis),
        ],
      ),
      trailing: Align(
        alignment: Alignment.centerLeft,
        child: ForwardButton(
          color: AppColors.black,
          onPressed: onPressed,
        ),
      ),
      showDivider: true,
    );
  }
}
