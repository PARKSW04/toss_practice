import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:fast_app_base/screen/notification/w_notification_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class NotificationDialog extends DialogWidget {
   NotificationDialog({super.key, required this.tossNotification});

   final List<TossNotification> tossNotification;


  @override
  State<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.tossNotification.map((e) => NotificationItemWidget(tossNotification: e, onTap: () {
            widget.hide();
          },))
        ],
      ),
    );
  }
}
