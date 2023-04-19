import 'package:auto_size_text/auto_size_text.dart';
import 'package:bemzaj_store/screens/MainWidgets/textCustBemzaj.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../../consts/BemzajColors.dart';
import '../MainWidgets/apppBar.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidgets.getAppBar('Payment', true,BemzajColors.appBar, context),
        body: SafeArea(
            child: Container(
              height: 100.h,
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                SizedBox(
                height: 16.1.h,
                ),
                Container(
                child: Center(child: WhiteText(text: 'Order Placed!', size: 31, fontWeight: FontWeight.w400)),
                height: 26.7.h,
                width:92.w ,
                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: BemzajColors.seven9color),
                ),
                SizedBox(
                height: 10.9.h,
                ),
                SizedBox(width: 71.w,
                child:  AutoSizeText(
                        "Please pay your invoice through mbok using the following details:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),),
                
Spacer(),              Container(
                child: Center(child: WhiteText(text: 'Back to home', size: 18, fontWeight: FontWeight.bold)),
                height: 6.4.h,
                width:92.w ,
                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: BemzajColors.seven9color),
                ),
           
               SizedBox(
                height: 2.87.h,
                ),
           
              ]),
              ),
            )));
  }
}
