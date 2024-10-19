import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_stock.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class InterestStockWidget extends StatelessWidget {
  const InterestStockWidget({required this.stock, super.key});

  final Stock stock;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: Row(
        children: [
          Image.asset(stock.imagePath, width: 40,),
          Width10,
          stock.name.text.color(context.appColors.mainText).bold.size(15).make(),
          const EmptyExpanded(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              stock.todayPercentageString.text.bold.color(stock.getStringColor(context)).make(),
              Height5,
              (stock.currentPrice.toComma() + '원').text.color(context.appColors.lessImportantText).size(13).bold.make()
            ],
          )
        ],
      ),
    );
  }
}
