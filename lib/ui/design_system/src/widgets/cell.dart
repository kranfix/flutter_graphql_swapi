import 'package:flutter/widgets.dart';

class Cell extends StatelessWidget {
  const Cell({
    Key key,
    this.alignment = Alignment.center,
    this.child,
  })  : assert(alignment != null),
        super(key: key);

  final Alignment alignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      alignment: alignment,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: child,
    );
  }
}
