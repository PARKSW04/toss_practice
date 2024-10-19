import 'package:fast_app_base/screen/main/tab/stock/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../common/common.dart';

class SearchHistoryStockList extends StatefulWidget {
  SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: Obx(
            () =>
            ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10),
                scrollDirection: Axis.horizontal,
                itemCount: searchData.searchHistoryList.length,
                itemBuilder: (context, index) {

                  final HistoryStock = searchData.searchHistoryList[index];

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                      child: Row(
                        children: [
                          Tap(
                            onTap: (){Nav.push(StockDetailPage(stockName: HistoryStock ));},
                              child: HistoryStock.text.make()),
                          Width(5),
                          Tap(
                              onTap: () {
                                searchData.searchHistoryList.remove(HistoryStock);
                              },
                              child: Icon(Icons.close, size: 20,))
                        ],
                      ).box
                          .withRounded(value: 8)
                          .color(context.appColors.buttonBackground)
                          .p8
                          .make(),
                  );
                }),
      ),
    );
  }
}
