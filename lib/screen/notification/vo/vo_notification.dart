import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

class TossNotification {
  bool isRead;
  final NotificationType type;
  final String description;
  final DateTime time;

  TossNotification(
    this.type,
    this.description,
    this.time,
  {this.isRead = false}
  );
}
