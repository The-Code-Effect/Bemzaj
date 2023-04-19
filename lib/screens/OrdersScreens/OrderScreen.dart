import 'package:auto_size_text/auto_size_text.dart';
import 'package:bemzaj_store/screens/HomePage.dart';
import 'package:bemzaj_store/screens/MainWidgets/apppBar.dart';
import 'package:bemzaj_store/screens/addItemsScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../consts/BemzajColors.dart';
import '../MainWidgets/mainPAding.dart';
import '../MainWidgets/textCustBemzaj.dart';
import '../PaymentScreens/paymentScreen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets.getAppBar('Order', false,BemzajColors.appBar, context),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 5.0.h,
            ),


Padding(padding:
  EdgeInsets.symmetric(
    horizontal: 23.sp
  ),
  child:   Column(
  
    children: [
          Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            'Order ID',
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' IN120_1234-160',
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      SizedBox(height: 2.sp,),
                      Row(
                      children: [
                        Text(
                          'ORDER DATE',
                          style: TextStyle(
                              fontSize: 8,
                          color: BemzajColors.ccColor,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          ' 12/8/2021',
                          style: TextStyle(
                              fontSize: 8,
                          color: BemzajColors.ccColor,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    SizedBox(height: 4.sp,),
                      Row(
              children: [
              

                SizedBox(
                  child: Row(children: [
                      Icon(
                      Icons.flag,
                      size: 8.sp,
                      color: Colors.white,
                    ),
                     SizedBox(
                      width: 1.9.w,
                    ),
                    // ignore: prefer_const_constructors
                    AutoSizeText(
                      'AMAZON',
                      style: TextStyle(
                          fontSize: 8,
                          color: BemzajColors.ccColor,
                          fontWeight: FontWeight.normal),
                    ),
                   
                   
                  ]),
                )
              ],
            ),
SizedBox(height: 9.0.sp,),
 Center(
              child: SizedBox(
                
                
                height:26.6.sp ,
                width:126.sp ,
                
                
                child: PaymentVerButton(color:Color(0xff4ECB71) ,text: 'Order Shipping',fontSize: 12,)),
            ),

SizedBox(height: 29,),
Row(children: [
WhiteText(text: 'Total Price', size: 20, fontWeight: FontWeight.bold)
,Spacer(),
CostText(numberText: '45,000',fontWeight: FontWeight.bold,size1: 22,color2:Color(0xffCBCBCB))


],)

    ]
    
    ,
  
  ),
),

SizedBox(height: 29.sp,),
DividerBeMzaj(),
SizedBox(height:16.6.sp ,),

BemzajMainPAdding(pading: 23.sp, widget: WhiteText(text: '3 Items',fontWeight: FontWeight.bold,size: 20,))
,
SizedBox(height:15.sp ,),


Center(
  child: Column(children: [
    ItemsCard(padding: 0,),
    ItemsCard(padding: 0,),
    ItemsCard(padding: 0,),
        ItemsCard(padding: 0,),

  ]),
)

          







          
        

          ]),
        ),
      ),
    );
  }
  }
