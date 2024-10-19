import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/data/preference/item/nullable_preference_item.dart';
import 'package:fast_app_base/common/data/preference/item/preference_item.dart';
import 'package:fast_app_base/common/data/preference/item/rx_preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';

import 'item/rxn_preference_item.dart';


class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme', App.defaultTheme);
  static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
  static final sliderValueRx = RxPreferenceItem<double, RxDouble>('sliderValueRx', 0.5);
  static final numberRx = RxPreferenceItem<int, RxInt>('numberRx', 0);
  static final birthDaySet = RxnPreferenceItem<DateTime, Rxn<DateTime>>('birthDaySet', null);
}
