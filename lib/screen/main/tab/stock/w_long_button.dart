import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LongButton extends StatelessWidget {
  const LongButton({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.size(13).bold.color(context.appColors.mainText).make(),
        EmptyExpanded(),
        Arrow(size: 12, color: context.appColors.lessImportantText,)
      ],
    ).pSymmetric(h: 16, v: 12);
  }
}
