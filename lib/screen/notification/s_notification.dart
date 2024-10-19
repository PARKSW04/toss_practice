import 'package:fast_app_base/screen/notification/d_notification.dart';
import 'package:fast_app_base/screen/notification/notification_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification_item_widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            title: Text('알림'),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) =>
                  NotificationItemWidget(
                    onTap: () {
                      NotificationDialog(tossNotification: [NotificationList[index]]).show();
                      setState(() {
                        NotificationList[index].isRead = !NotificationList[index].isRead;
                      });
                    },
                      tossNotification: NotificationList[index]),
              childCount: NotificationList.length))
        ],
      ),
    );
  }
}
