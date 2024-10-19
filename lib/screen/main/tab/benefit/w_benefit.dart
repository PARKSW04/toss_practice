import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo/vo_benefit.dart';
import 'package:flutter/material.dart';

class BenefitWidget extends StatefulWidget {
  const BenefitWidget(this.benefit, {super.key});

  final Benefit benefit;

  @override
  State<BenefitWidget> createState() => _BenefitWidgetState();
}

class _BenefitWidgetState extends State<BenefitWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
        widget.benefit.iconPath,
        width: 55,
      ),
      Width10,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          '${widget.benefit.description}'
              .text
              .color(context.appColors.lessImportantText)
              .size(13)
              .normal
              .make(),
          Height5,
          '${widget.benefit.buttonText}'
              .text
              .color(context.appColors.linkText)
              .size(13)
              .bold
              .make(),
        ],
      )
    ]).pSymmetric(v: 15);
  }
}
