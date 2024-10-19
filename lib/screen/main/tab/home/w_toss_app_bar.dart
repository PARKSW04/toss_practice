import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/constants.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';

class TossAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const TossAppBar({super.key});

  @override
  State<TossAppBar> createState() => _TossAppBarState();
}

class _TossAppBarState extends State<TossAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TossAppBar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Image.asset(
              '$basePath/icon/toss.png',
              height: 35,
            ),
            const EmptyExpanded(),
            Image.asset(
              '$basePath/icon/map_point.png',
              height: 30,
            ),
            Width10,
            Tap(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
              child: Stack(
                children: [
                  Image.asset(
                    '$basePath/icon/notification.png',
                    height: 30,
                  ),
                  if (_showRedDot == false)
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                    ))
                  else
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                      ),
                    ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
