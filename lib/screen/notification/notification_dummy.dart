import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final TossNotification tossPay1 = TossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요? CGV할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(Duration(minutes: 27)));
final TossNotification stock1 = TossNotification(
    NotificationType.stock,
    '인적분할에 대해 알려드릴게요.',
    DateTime.now().subtract(
      Duration(hours: 1),
    ));
final TossNotification walk1 = TossNotification(
    NotificationType.walk,
    '1,000걸음 이상 걸었다면 포인트 받으세요.',
    DateTime.now().subtract(
      Duration(hours: 1),
    ));
final TossNotification idea1 = TossNotification(
    NotificationType.idea,
    '유럽 식품 물가가 치솟고 있어요.\n박성우님, 유럽여행에 관심이 있다면 확인해보세요',
    DateTime.now().subtract(
      Duration(hours: 8),
    ));
final TossNotification walk2 = TossNotification(
    NotificationType.walk,
    '오늘 1,000걸음을 넘겼어요. 포인트를 받아보세요',
    DateTime.now().subtract(
      Duration(hours: 11),
    ));
final TossNotification luck1 = TossNotification(
    NotificationType.luck,
    '6월 5일, 행운복권이 도착했어요',
    DateTime.now().subtract(
      Duration(hours: 12),
    ));
final TossNotification people1 = TossNotification(
    NotificationType.people,
    '띵동! 일요일 공동구매 보러가기',
    DateTime.now().subtract(
      Duration(days: 1),
    ));

final NotificationList = <TossNotification>[
  tossPay1,
  stock1,
  walk1,
  idea1,
  walk2,
  luck1,
  people1
];
