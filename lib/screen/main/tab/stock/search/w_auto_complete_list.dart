import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/screen/main/tab/stock/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AutoCompleteSearchList extends StatelessWidget
    with SearchStockDataProvider {
  AutoCompleteSearchList({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {


    return ListView.builder(
        itemCount: searchData.autoCompleteList.length,
        itemBuilder: (context, index) {
          final Stock = searchData.autoCompleteList[index];
          final String _stockName =
              Stock.name;
          return Tap(
              onTap: () {
                Nav.push(StockDetailPage(stockName: _stockName));
                searchData.addHistory(Stock);
                controller.clear();
              },
              child: _stockName.text.make().pSymmetric(v: 15, h: 16));
        });
  }
}
