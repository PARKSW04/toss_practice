import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
      required this.child,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      this.radius = 15,
      this.backgroundColor});

  final EdgeInsets padding;
  final Widget child;
  final double radius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: backgroundColor ?? context.appColors.RoundedContainerlayout),
        child: child);
  }
}
