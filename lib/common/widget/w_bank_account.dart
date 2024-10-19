import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bankaccount.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BankAccountWidget extends StatelessWidget {
  const BankAccountWidget(this.account, {super.key});

  final BankAccount account;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoPath,
          width: 40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName ?? '${account.bank.bankName} 통장')
                  .text
                  .white
                  .size(12)
                  .make(),
              (account.balance.toComma() + '원').text.white.size(18).bold.make()
            ],
          ).pSymmetric(h: 20, v: 10),
        ),
        RoundedContainer(
          radius: 5,
          backgroundColor: context.appColors.buttonBackground,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: '송금'.text.bold.size(12).white.make(),
        )
      ],
    );
  }
}
