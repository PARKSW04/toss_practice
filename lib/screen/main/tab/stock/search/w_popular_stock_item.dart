import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_popular_stock.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PopularStockItem extends StatelessWidget {
  const PopularStockItem({super.key, required this.stock, required this.num});

  final int num;
  final PopularStock stock;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        num.toString().text.bold.size(16).color(context.appColors.subMainText).make(),
        Width(30),
        stock.name.text.bold.size(16).color(context.appColors.subMainText).make(),
        EmptyExpanded(),
        stock.todayPercentageString.text.size(15).color(stock.getStringColor(context)).make()
      ],
    ).pSymmetric(v: 18);
  }
}
