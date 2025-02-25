import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_auto_complete_list.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_popular_stock_list.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_search_appbar.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_search_history_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockSearchScreen extends StatefulWidget {
  const StockSearchScreen({super.key});

  @override
  State<StockSearchScreen> createState() => _StockSearchScreenState();
}

class _StockSearchScreenState extends State<StockSearchScreen> with SearchStockDataProvider{
  final controller = TextEditingController();

@override
  void initState() {
  Get.put(SearchStockData());
  controller.addListener(() {
    searchData.search(controller.text);
  });
    super.initState();
  }

  @override
  void dispose() {
  Get.delete<SearchStockData>();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(controller: controller,),
      body:
      Obx(() => searchData.autoCompleteList.isEmpty ?
        ListView(children: [
          SearchHistoryStockList(),
          PopularStockListFragment()

        ],)
        : AutoCompleteSearchList(controller: controller,),
      )
    );
  }
}
