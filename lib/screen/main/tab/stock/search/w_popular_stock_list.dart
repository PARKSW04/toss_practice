import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_popular_stock_item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../vo/popular_stock_dummy.dart';

class PopularStockListFragment extends StatelessWidget {
  const PopularStockListFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기 검색'.text.bold.color(context.appColors.mainText).size(18).make(),
            EmptyExpanded(),
            '오늘 ${DateTime.now().formattedTime} 기준'.text.color(context.appColors.lessImportantText).size(12).make()
          ],
        ).pSymmetric(h: 20, v: 20),
        ...PopularStockList.mapIndexed((element, index) => PopularStockItem(stock: element, num: index + 1)).toList()
      ],
    ).pSymmetric(h: 16);
  }
}
