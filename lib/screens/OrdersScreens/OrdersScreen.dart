import 'package:bemzaj_store/screens/HomePage.dart';
import 'package:bemzaj_store/screens/MainWidgets/mainPAding.dart';
import 'package:bemzaj_store/screens/MainWidgets/textCustBemzaj.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../../consts/BemzajColors.dart';
import '../MainWidgets/apppBar.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets.getAppBar('All Orders', true,BemzajColors.appBar, context),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 5.0.h,
            ),

            BemzajMainPAdding(pading: 9.7.w, widget: WhiteText(text: "View your orders", size: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 5.sp,)
                       , BemzajMainPAdding(pading: 9.7.w, widget: SizedBox(
                        
                        width: 80.w,
                        child: WhiteText(text: "The orders you’ve placed with Bmazaj\nlorem ipsim", size: 14, fontWeight: FontWeight.w400))),
                        
   SizedBox(
              height: 5.0.h,
            ),
            Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OrderMainCard(padding: 2.7.w,),
                OrderMainCard(padding: 2.7.w,),
                OrderMainCard(padding: 2.7.w,),




              ],),
            )
,
SizedBox(height: 5.h,)
          ]),
        ),
      ),
    );
  }
}
