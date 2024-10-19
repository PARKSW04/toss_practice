import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_search.dart';
import 'package:fast_app_base/screen/main/tab/stock/settings/s_setting.dart';
import 'package:fast_app_base/screen/main/tab/stock/tap/f_my_stock_fragment.dart';
import 'package:fast_app_base/screen/main/tab/stock/tap/f_today_discovery.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../common/common.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final TabController tabBarController =
      TabController(length: 2, vsync: this);
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            ImageButton('$basePath/icon/stock_search.png', () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => StockSearchScreen()));
            }),
            Width20,
            ImageButton('$basePath/icon/stock_calendar.png', () {}),
            Width20,
            ImageButton('$basePath/icon/stock_settings.png', () {
              Nav.push(SettingScreen());
            }),
            Width10,
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Height20,
              title,
              tapBar,
              if (myIndex == 0)
                MyStockFragment(stockBalance: 1234293,)
              else
                TodayDiscoveryFragment()
            ],
          ),
        )
      ],
    );
  }

  Widget get title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ('토스증권').text.bold.color(context.appColors.mainText).size(24).make(),
          Width10,
          ('S&P 500')
              .text
              .color(context.appColors.lessImportantText)
              .size(12)
              .make(),
          Width10,
          3919.29.toComma().text.color(Colors.red).size(12).make()
        ],
      ).pSymmetric(h: 16);

  Widget get tapBar => Column(
        children: [
          TabBar(
            onTap: (e) {
              setState(() {
              myIndex = e;
              });
            },
            indicatorColor: context.appColors.mainText,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
            labelPadding: const EdgeInsets.symmetric(vertical: 15),
            controller: tabBarController,
            tabs: [
              '내 주식'.text.color(context.appColors.mainText).size(18).bold.make(),
              '오늘의 발견'.text.color(context.appColors.mainText).size(18).bold.make(),
            ],
          ),
          Line()
        ],
      );
}
