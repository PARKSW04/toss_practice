import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/f_benefit.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';
import 'package:fast_app_base/screen/main/tab/payment/f_payment.dart';
import 'package:fast_app_base/screen/main/tab/stock/f_stock.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home_filled,'홈', HomeFragment()),
  benefit(Icons.diamond,'혜택', BenefitFragment()),
  payment(Icons.monetization_on_sharp,'토스페이', PaymentFragment()),
  stock(Icons.bar_chart,'주식', StockFragment()),
  all(Icons.menu,'전체', StockFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
