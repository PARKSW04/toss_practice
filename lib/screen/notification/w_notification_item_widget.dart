import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:flutter/material.dart';

import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  const NotificationItemWidget({
    super.key,
    required this.onTap,
    required this.tossNotification,
  });

  final TossNotification tossNotification;
  final Function() onTap;

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const double leftPadding = 10;
  static const double iconWidth = 25;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        color: widget.tossNotification.isRead
            ? context.backgroundColor
            : context.appColors.unreadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.tossNotification.type.iconPath,
                  width: iconWidth,
                ),
                const SizedBox(
                  width: leftPadding,
                ),
                Expanded(
                    child: Text(
                  widget.tossNotification.type.name,
                  style: TextStyle(color: context.appColors.lessImportantText),
                )),
                Text(
                  timeago.format(widget.tossNotification.time, locale: "ko"),
                  style: TextStyle(color: context.appColors.lessImportantText),
                )
                // locale: context.locale.countryCode)) 앱의 국가 설정을 따를 경우 이렇게 해야함
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: leftPadding + iconWidth),
              child: Text(
                widget.tossNotification.description,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
