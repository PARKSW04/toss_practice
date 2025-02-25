import 'package:fast_app_base/common/constant/app_colors.dart';
import 'package:flutter/material.dart';

export 'package:fast_app_base/common/constant/app_colors.dart';

typedef ColorProvider = Color Function();

abstract class AbstractThemeColors {
  const AbstractThemeColors();

  Color get seedColor => const Color(0xff26ff8c);

  Color get veryBrightGrey => AppColors.brightGrey;

  Color get drawerBg => const Color.fromARGB(255, 255, 255, 255);

  Color get scrollableItem => const Color.fromARGB(255, 57, 57, 57);

  Color get iconButton => const Color.fromARGB(255, 0, 0, 0);

  Color get iconButtonInactivate => const Color.fromARGB(255, 162, 162, 162);

  Color get inActivate => const Color.fromARGB(255, 200, 207, 220);

  Color get activate => const Color.fromARGB(255, 63, 72, 95);

  Color get badgeBg => AppColors.blueGreen;

  Color get textBadgeText => Colors.white;

  Color get badgeBorder => Colors.transparent;

  Color get divider => const Color.fromARGB(255, 228, 228, 228);

  Color get text => AppColors.darkGrey;

  Color get hintText => AppColors.middleGrey;

  Color get focusedBorder => AppColors.darkGrey;

  Color get confirmText => AppColors.blue;

  Color get drawerText => text;

  Color get snackbarBgColor => AppColors.mediumBlue;

  Color get blueButtonBackground => AppColors.darkBlue;

  Color get appBarBackground => const Color.fromARGB(255, 16, 16, 18);

  Color get RoundedContainerlayout => const Color.fromARGB(255, 24, 24, 24);

  Color get buttonBackground => const Color.fromARGB(255, 40, 40, 40);

 Color get unreadColor => const Color.fromARGB(255, 42 , 42, 42);

  Color get lessImportantText => AppColors.grey ;

  Color get mainText => Colors.white ;

  Color get linkText => AppColors.blue;

  Color get plusColor => Colors.red;

  Color get minusColor => Colors.blueAccent;

  Color get subMainText => const Color.fromARGB(255, 160, 160, 160);
}
