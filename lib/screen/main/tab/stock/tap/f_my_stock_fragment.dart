import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/num_extension.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/w_long_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/widget/w_interest_stock_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStockFragment extends StatefulWidget {
  MyStockFragment({super.key, required this.stockBalance});

  int stockBalance;

  @override
  State<MyStockFragment> createState() => _MyStockFragmentState();
}

class _MyStockFragmentState extends State<MyStockFragment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context, widget.stockBalance),
        Height20,
        getMyStock(context),
        getInterstStock(context),
      ],
    ).pOnly(bottom: MainScreenState.bottomNavigationBarHeight + 10);
  }
}

Widget getInterstStock(BuildContext context) {
  return Column(
    children: [
      ...InterstedStockList.map((e) => InterestStockWidget(stock: e))
    ],
  );
}



Widget getMyStock(BuildContext context) {
  return Container(
    color: context.appColors.appBarBackground,
    child: Column(
      children: [
        Row(children: [
          '관심 주식'.text.bold.color(context.appColors.mainText).size(20).make(),
          const EmptyExpanded(),
          '편집하기'.text.color(context.appColors.lessImportantText).size(15).make()
        ]).pSymmetric(h: 16, v: 16),
        Tap(
          onTap: () {
            context.showSnackbar('pressed!');
          },
          child: Row(children: [
            '기본'.text.size(15).color(context.appColors.mainText).make(),
            const EmptyExpanded(),
            Arrow(direction: AxisDirection.down, size: 15, color: context.appColors.lessImportantText,)
          ],).pSymmetric(h: 16, v: 16),
        ),
      ],
    ),
  );
}

Widget getMyAccount(BuildContext context, int stockBalance) {
  return Container(
    decoration: BoxDecoration(color: context.appColors.appBarBackground),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Height20,
        '계좌'.text.bold.size(18).make().pSymmetric(h: 16),
        Height5,
        Row(children: [
          ('${(stockBalance).toComma()}원').text.size(24).bold.make(),
          Width5,
          const Arrow(),
          const EmptyExpanded(),
          RoundedContainer(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            radius: 8,
            backgroundColor: context.appColors.buttonBackground,
            child: Text(
              '채우기',
              style: TextStyle(
                  color: context.appColors.lessImportantText, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          )
        ]).pSymmetric(h: 16),
        const Height(20),
        const Line(
          height: 0.5,
        ),
        const LongButton(
          title: '주문내역',
        ),
        const LongButton(
          title: '판매수익',
        ),
      ],
    ),
  );
}
