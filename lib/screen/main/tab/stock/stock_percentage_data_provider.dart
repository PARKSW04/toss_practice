import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';

abstract mixin class StockPercentageDataProvider {

int get currentPrice;
int get yesterdayClosePrice;

  String get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toStringAsFixed(1);

  String get todayPercentageString => '$symbol$todayPercentage%';

  bool get isPlus => currentPrice > yesterdayClosePrice;

  bool get isSame => currentPrice == yesterdayClosePrice;

  String get symbol => isSame ? '' : isPlus ? '+' : '';

  Color getStringColor(BuildContext context) =>
      isSame ? context.appColors.lessImportantText : isPlus ? context.appColors
          .plusColor : context.appColors.minusColor;

}