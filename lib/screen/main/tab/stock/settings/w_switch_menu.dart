import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/settings/w_os_switch.dart';
import 'package:flutter/material.dart';

class SwitchMenu extends StatelessWidget {
  const SwitchMenu({super.key, required this.title, required this.isOn, required this.onTap});

  final String title;
  final bool isOn;
  final ValueChanged<bool> onTap;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.make(),
        EmptyExpanded(),
        OsSwitch(value: isOn, onChanged: onTap)
      ],
    ).pSymmetric(h: 16);
  }
}
