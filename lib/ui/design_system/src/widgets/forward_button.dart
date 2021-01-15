import 'package:flutter/material.dart';

class ForwardButtonIcon extends StatelessWidget {
  const ForwardButtonIcon({Key key}) : super(key: key);

  static IconData _getIconData(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return Icons.arrow_forward_ios;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        return Icons.keyboard_arrow_right;
    }
  }

  @override
  Widget build(BuildContext context) =>
      Icon(_getIconData(Theme.of(context).platform));
}

class ForwardButton extends StatelessWidget {
  const ForwardButton({Key key, this.color, this.onPressed}) : super(key: key);

  final Color color;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    return IconButton(
      icon: const ForwardButtonIcon(),
      color: color,
      tooltip: MaterialLocalizations.of(context).backButtonTooltip,
      onPressed: onPressed,
    );
  }
}
