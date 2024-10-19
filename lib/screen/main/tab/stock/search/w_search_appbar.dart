import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        width: double.infinity,
        child: Row(
          children: [
            Tap(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  width: 56,
                  height: 56,
                  child: Arrow(
                    direction: AxisDirection.left,
                  ),
                )),
            Expanded(
                child: TextFieldWithDelete(
                  textInputAction: TextInputAction.search,
                  texthint: "'커피'를 검색해보세요",
              controller: controller,
                  onEditingComplete: () {
                    print('rjator');
                    AppKeyboardUtil.hide(context);
                  },
            ).pOnly(top: 8, right: 16))
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
