import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/common/data/preference/prefs.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/settings/d_num.dart';
import 'package:fast_app_base/screen/main/tab/stock/settings/w_switch_menu.dart';
import 'package:fast_app_base/screen/opensource/s_opensource.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: '설정'.text.make(),
        ),
        body: ListView(
          children: [
            Obx(
              () => SwitchMenu(
                  title: '푸시알림',
                  isOn: Prefs.isPushOnRx.get(),
                  onTap: (newValue) {
                    Prefs.isPushOnRx.set(newValue);
                  }),
            ),
            Obx(() => Slider(
                value: Prefs.sliderValueRx.get(),
                onChanged: (value) {
                  Prefs.sliderValueRx.set(value);
                })),
            Obx(
              () => BigButton(
                  text:
                      '날짜${Prefs.birthDaySet.get() == null ? '' : ':${Prefs.birthDaySet.get()?.formattedDate}'}',
                  onTap: () async {
                    final date = await showDatePicker(
                        context: context,
                        firstDate: DateTime.now().subtract(90.days),
                        lastDate: DateTime.now().add(90.days),
                        initialDate: DateTime.now());
                    if (date != null) {
                      Prefs.birthDaySet.set(date);
                    }
                  }),
            ),
            Obx(() => BigButton(text: '저장된 숫자 ${Prefs.numberRx.get()}', onTap: () async {
              final number = await NumberDialog().show();
              if(number != null){
              Prefs.numberRx.set(number);}
            })),
            BigButton(text: '오픈소스 화면', onTap:() {
              Nav.push(OpensourceScreen());
            })
          ],
        ));
  }
}
