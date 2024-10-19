import 'package:fast_app_base/screen/main/tab/benefit/benefit_dummy.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_benefit.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_my_point.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              ('혜택').text.bold.size(25).color(Colors.white).make(),
              SizedBox(height: 25,),
              MyPointWidget(myPoint: 569,),
              SizedBox(height: 25,),
              ('혜택 더 받기').text.bold.size(20).color(Colors.white).make(),
              SizedBox(height: 20,),
              
              ...BenefitList.map((e) => BenefitWidget(e))
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
