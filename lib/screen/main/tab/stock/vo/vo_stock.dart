import 'package:fast_app_base/screen/main/tab/stock/vo/vo_popular_stock.dart';

class Stock extends PopularStock {
  final String imagePath;

  Stock({
    required super.stockName,
    this.imagePath = '',
    required super.yesterdayClosePrice,
    required super.currentPrice,
  });
}
