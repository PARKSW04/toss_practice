import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  final double size;
  final AxisDirection direction;
  final Color? color;

  const Arrow({Key? key, this.size = 15, this.color = Colors.white, AxisDirection? direction})
      : direction = direction ?? AxisDirection.right,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      color: color,
      icon,
      size: size,
    );
  }

  IconData get icon {
    switch (direction) {
      case AxisDirection.up:
        return Icons.keyboard_arrow_up;
      case AxisDirection.right:
        return Icons.arrow_forward_ios;
      case AxisDirection.down:
        return Icons.keyboard_arrow_down;
      case AxisDirection.left:
        return Icons.arrow_back_ios;
    }
  }
}
