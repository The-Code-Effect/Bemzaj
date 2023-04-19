import 'package:auto_size_text/auto_size_text.dart';
import 'package:bemzaj_store/consts/BemzajColors.dart';
import 'package:bemzaj_store/screens/MainWidgets/textCustBemzaj.dart';
import 'package:bemzaj_store/screens/addItemsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../MainWidgets/apppBar.dart';
import '../MainWidgets/mainPAding.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets.getAppBar('Payment', true,BemzajColors.appBar, context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 3.2.h,
            ),
            BemzajMainPAdding(
              widget: Container(
                  width: 93.8.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: BemzajColors.seven9color),
                  child: BemzajMainPAdding(
                    pading: 5.5.w,
                    widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.2.h,
                          ),
                          WhiteText(
                              text: 'Order Summery',
                              size: 20,
                              fontWeight: FontWeight.bold),
                          SizedBox(
                            height: 1.9.h,
                          ),
                          Column(
                            children: [OrderItem(), OrderItem(), OrderItem()],
                          ),
                          SizedBox(
                            height: 4.8.h,
                          ),
                          Row(
                            children: [
                              Text('Total:',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffCBCBCB))),
                              Spacer(),
                              CostText(
                                numberText: '11,0000',
                                fontWeight: FontWeight.bold,
                                color2: Color(0xffCBCBCB),
                                size1: 17,
                              ),
                              SizedBox(
                                width: 5.5,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          )
                        ]),
                  )),
              pading: 3.3.w,
            ),
            SizedBox(
              height: 2.h,
            ),
            BemzajMainPAdding(
                pading: 5.5.w,
                widget: SizedBox(
                  width: 75.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WhiteText(
                          text: 'Deliver to',
                          size: 20,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 1.8.h,
                      ),
                      WhiteText(
                          text: 'Ahmed Gaafar',
                          size: 14,
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: .5.h,
                      ),
                      WhiteText(
                          text: '+24990810819',
                          size: 14,
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: 2.sp,
                      ),
                      WhiteText(
                          text:
                              'Khartoum, Riyadh, block 42, Street number 113, house number 249',
                          size: 14,
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: 2.sp,
                      ),
                      Container(
                        width: 35.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Color(0xff797979)),
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.sp, vertical: 5.sp),
                          child: WhiteText(
                              text: 'Change Address',
                              size: 9,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 2.8.h,
            ),
            DividerBeMzaj(),
            SizedBox(
              height: 2.2.h,
            ),
            Center(
              child: SizedBox(
                width: 72.2.w,
                child: Column(
                  children: [
                    AutoSizeText(
                        "Please pay your invoice through mbok using the following details:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                    SizedBox(
                      height: 10.sp,
                    ),
                    PaymentListTile(text: '1230321', title: 'Account Number'),
                    PaymentListTile(
                        text: 'Shop Online BMazaj', title: 'Account Name'),
                    PaymentListTile(text: 'Al Manshia', title: 'Branch'),
                    SizedBox(
                      height: 2.8.h,
                    ),
                    AutoSizeText("Upload a screenshot of your invoice here",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.57.h,
            ),
            Center(
              child: Container(
                width: 93.8.w,
                height: 18.3.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: BemzajColors.seven9color),
                child: Icon(CupertinoIcons.add_circled,color: Color(0xffEDEDED),size: 55.sp,),
              ),
            ),
            SizedBox(
              height: 3.38.h,
            ),
            Center(
              child: Container(
                width: 90.8.w,
                height: 6.0.h,
                child: Row(
                  children: [
                    Container(
                      width: 42.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: BemzajColors.seven9color),
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.sp, vertical: 5.sp),
                        child: WhiteText(
                            text: 'Cancel',
                            size: 18,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Spacer(),
                    Container(
                      width: 42.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Color(0xff414141)),
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.sp, vertical: 5.sp),
                        child: AutoSizeText('Confirm',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4ECB71))),
                      )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
          ],
        ),
      )),
    );
  }
}

class PaymentListTile extends StatelessWidget {
  final String text;
  final String title;
  const PaymentListTile({
    Key? key,
    required this.text,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.sp),
      child: Row(
        children: [
          Container(
            width: 32.7.w,
            child: AutoSizeText(title,
                maxLines: 1,
                minFontSize: 9,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          SizedBox(
            width: 2.2.w,
          ),
          Container(
            child: AutoSizeText(text,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: .8.h),
      child: SizedBox(
          width: 82.5.w,
          child: Row(
            children: [
              Container(
                  height: 41.6.sp,
                  width: 41.6.sp,
                  child: Icon(
                    Icons.image,
                    color: Color(0xffD9D9D9),
                    size: 25.sp,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDBDBDB), width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff797979))),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 45.w,
                height: 35.sp,
                child: WhiteText(
                  fontWeight: FontWeight.w300,
                  size: 11,
                  text: 'Item Name Item Name Item Name Item Name ',
                ),
              ),
              Spacer(),
              Column(
                children: [
                  WhiteText(text: '2x', size: 16, fontWeight: FontWeight.bold),
                  CostText(
                    numberText: '15.,000',fontWeight: FontWeight.w400,
                    color2: Colors.black,
                    size1: 11,
                  )
                ],
              )
            ],
          )),
    );
  }
}

class CostText extends StatelessWidget {
  final String numberText;
  final Color color2;
  final double size1;
  final FontWeight fontWeight;

  const CostText({
    Key? key,
    required this.numberText,
    required this.color2,
    required this.size1, required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: <TextSpan>[
      TextSpan(
          text: '$numberText ',
          style: TextStyle(
              color: Colors.white,
              fontSize: size1,
              fontWeight: fontWeight)),
      TextSpan(
          text: 'SDG',
          style: TextStyle(
              color: color2, fontSize: 8, fontWeight: fontWeight)),
    ]));
  }
}
