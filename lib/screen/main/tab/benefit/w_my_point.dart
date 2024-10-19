import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class MyPointWidget extends StatelessWidget {
  const MyPointWidget({super.key, required this.myPoint});
  final int myPoint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        Text('내 포인트', style: TextStyle(color: context.appColors.lessImportantText,fontSize: 15),),
        EmptyExpanded(),
        Text('$myPoint 원', style: TextStyle(color: context.appColors.lessImportantText, fontSize: 15),),
        Width10,
        Arrow()
      ],),
    );
  }
}

