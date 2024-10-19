import 'package:fast_app_base/screen/main/tab/home/bank_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bankaccount.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '신한 주거래 우대통장(저축에금)');
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 30000000, accountTypeName: '저축예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 300000000000000, accountTypeName: '저축예금');
final bankAccountKakao =
    BankAccount(bankKakao, 7000000, accountTypeName: '입출금통장');
final bankAccountToss = BankAccount(bankToss, 50000000);

// main() {
//   // print(bankAccounts[2].balance);
//   //   for( final item in bankAccounts) {
//   //     print(item.balance);
//   //   }
//   // }
//   final A = bankMap["shinhan1"];
//   print(A == bankAccountShinhan1);
//
//   for (final entry in bankMap.entries) {
//     print(entry.key + ' balance:' + (entry.value.balance.toString() ?? ''));
//   }
//
//   print(bankSet.contains(bankAccountShinhan3));
// }
//
//List
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountKakao,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss,
  bankAccountKakao,
  bankAccountToss,
  bankAccountKakao,
  bankAccountToss,
  bankAccountToss,
  bankAccountToss,
];
//
// //Map
// final Map<String, BankAccount> bankMap = {
//   'shinhan1': bankAccountShinhan1,
//   'shinhan2': bankAccountShinhan2,
//   'shinhan3': bankAccountShinhan3,
//   'toss': bankAccountToss,
//   'kakao': bankAccountKakao
// };
//
// //Set
// final Set<BankAccount> bankSet = {
//   bankAccountToss,
//   bankAccountShinhan3,
//   bankAccountShinhan2,
//   bankAccountShinhan1,
//   bankAccountKakao,
// };
