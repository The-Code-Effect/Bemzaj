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

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBarWidgets.getAppBar('Item', false, BemzajColors.appBar, context),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              color: BemzajColors.seven9color,
              width: 100.w,
              height: 246.sp,
              child: Center(
                  child: Icon(
                Icons.image,
                size: 200.sp,
                color: Colors.white,
              )),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.sp),
              child: Column(
                children: [
                  WhiteText(
                      text: 'Item Name Item Name Item Name Item Name Item Name',
                      size: 19,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 7.sp,
                  ),
                  Row(
                    children: [
                      ItemCountry(),
                      Spacer(),
                      WhiteText(
                          text: 'Status',
                          size: 12,
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        width: 26.sp,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.2.sp,
                  ),
                  Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: WhiteText(
                          text: '4/1/2023',
                          size: 9,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 19.2.sp,
                  ),
                  Row(
                    children: [
                      WhiteText(
                          text: 'Price', size: 20, fontWeight: FontWeight.bold),
                      Spacer(),
                      CostText(
                          numberText: '20,000',
                          fontWeight: FontWeight.bold,
                          size1: 22,
                          color2: Color(0xffCBCBCB))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            DividerBeMzaj(),
            SizedBox(
              height: 18.3.sp,
            ),
            ItemInfoCard(title:"Description" ,
            des: 'https:www.amazon.com.LoremipsumdolorsitametconsecteturElitpharetratemporquamenimPuruselementum amet tincidunt lacinia quamadipiscing',),
             ItemInfoCard(title:"Item Link" ,
            des: 'https:www.amazon.com.LornsectratemporquamenimPuruselementum amet tincidunt lacinia quamadipiscing',)
            , ItemInfoCard(title:"Admin Notes" ,
            des: 'If admin sends notes it will appear here',)
         
         
             ,SizedBox(
              height: 18.3.sp,
            ),
         
          ]),
        ),
      ),
    );
  }
}

class ItemInfoCard extends StatelessWidget {
  final String title;
    final String des;

  const ItemInfoCard({
    Key? key, required this.title, required this.des,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BemzajMainPAdding(
      pading: 16.sp,
      widget: SizedBox(
        width: 231.sp,
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          WhiteText(text: title, size: 12, fontWeight: FontWeight.bold),
          SizedBox(
            height: 2.sp,
          ),
          WhiteText(
              text:
                 des,
              size: 9,
              fontWeight: FontWeight.w400),
          SizedBox(
            height: 2.sp,
          ),
          SizedBox(height: 16.sp)
        ]),
      ),
    );
  }
}

class ItemCountry extends StatelessWidget {
  const ItemCountry({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
