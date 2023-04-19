import 'package:auto_size_text/auto_size_text.dart';
import 'package:bemzaj_store/consts/BemzajColors.dart';
import 'package:bemzaj_store/screens/HomePage.dart';
import 'package:bemzaj_store/screens/MainWidgets/apppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import 'MainWidgets/mainPAding.dart';
import 'MainWidgets/textCustBemzaj.dart';

class AddItemsScreen extends StatefulWidget {
  const AddItemsScreen({super.key});

  @override
  State<AddItemsScreen> createState() => _AddItemsScreenState();
}

class _AddItemsScreenState extends State<AddItemsScreen> {
  final TextEditingController linkC = TextEditingController();
  final TextEditingController noteC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(1.sp);
    return Scaffold(
      appBar: AppBarWidgets.getAppBar(
          'Add items', true, BemzajColors.appBar, context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.3.h,
            ),
            BemzajMainPAdding(
              widget: SizedBox(
                width: 85.5.w,
                child: Text(
                    'Copy and paste link to the item you want to order here, and our team will price it for you',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white)),
              ),
              pading: 5.w,
            ),
            SizedBox(
              height: 5.07.h,
            ),
            BemzajMainPAdding(
              pading: 8.05.w,
              widget: WhiteText(
                text: "Add Link",
                size: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1.1.h),
            BemzajMainPAdding(
              pading: 8.05.w,
              widget: Container(
                width: 77.7.w,
                height: 5.h,
                child: TextFormField(
                  controller: noteC,
                  validator: (value) {
                    // if (Provider.of<Setting>(context, listen: false).appMode !=
                    //     'eijar') {
                    //   if (value!.isEmpty) {
                    //     return AppLocalizations.of(context)!.empty_fields_signPG;
                    //   }
                    // }
                  },
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                  decoration: new InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 10.sp,
                          color: BemzajColors.dBcolor,
                          fontWeight: FontWeight.w400),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xff0288D1),
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade400, width: .5),
                      )),
                  // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                ),
              ),
            ),
            SizedBox(height: 1.0.h),
            BemzajMainPAdding(
              pading: 8.05.w,
              widget: HintText(
                text: "This is a hint text to help user.",
              ),
            ),
            SizedBox(height: 1.4.h),
            BemzajMainPAdding(
              pading: 8.05.w,
              widget: Text('Note',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(height: 1.1.h),
            BemzajMainPAdding(
              pading: 8.05.w,
              widget: Container(
                width: 77.7.w,
                height: 5.h,
                child: TextFormField(
                  controller: noteC,
                  validator: (value) {
                    // if (Provider.of<Setting>(context, listen: false).appMode !=
                    //     'eijar') {
                    //   if (value!.isEmpty) {
                    //     return AppLocalizations.of(context)!.empty_fields_signPG;
                    //   }
                    // }
                  },
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 10.sp,
                          color: BemzajColors.dBcolor,
                          fontWeight: FontWeight.w400),
                      // ignore: prefer_const_constructors
                      focusedBorder: OutlineInputBorder(
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(
                            color: const Color(0xff0288D1),
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade400, width: .5),
                      )),
                  minLines: null,
                  maxLines:
                      null, // If this is null, there is no limit to the number of lines, and the text container will start with enough vertical space for one line and automatically grow to accommodate additional lines as they are entered.
                  expands:
                      true, // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                ),
              ),
            ),
            SizedBox(height: 1.0.h),
            BemzajMainPAdding(
              pading: 8.05.w,
              widget: HintText(
                text: "This is a hint text to help user.",
              ),
            ),
            SizedBox(height: 1.4.h),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffD9D9D9)),
                width: 35.sp,
                height: 35.sp,
                child: Center(
                    child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 35.sp,
                )),
              ),
            ),
            SizedBox(height: 1.8.h),
            DividerBeMzaj(),
            SizedBox(height: 1.8.h),
            BemzajMainPAdding(
                pading: 2.7.w,
                widget: WhiteText(
                  fontWeight: FontWeight.bold,
                  size: 14,
                  text: 'Your Items',
                )),
            SizedBox(height: 1.0.h),
            BemzajMainPAdding(
                pading: 2.7.w, widget: HintText(text: 'Subheading here')),
            SizedBox(
              height: 3.2.h,
            ),
            ItemsCard(padding: 2.7.w,),
            ItemsCard(padding: 2.7.w,),
            ItemsCard(padding: 2.7.w,),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      )),
    );
  }
}

class DividerBeMzaj extends StatelessWidget {
  const DividerBeMzaj({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color(0xffD9D9D9),
    );
  }
}

class ItemsCard extends StatelessWidget {
  final double padding;
  const ItemsCard({
    Key? key, required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.sp),
      child: BemzajMainPAdding(
          pading: padding,
          widget: Container(
            // ignore: sort_child_properties_last
            child: Row(children: [
              Container(
                  height: 81.sp,
                  width: 81.sp,
                  child: Icon(
                    Icons.image,
                    color: Color(0xffD9D9D9),
                    size: 65.sp,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDBDBDB), width: 1),
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff797979))),
              SizedBox(
                width: 2.2.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.sp),
                  SizedBox(
                    width: 62.w,
                    // ignore: prefer_const_constructors
                    child: WhiteText(
                      fontWeight: FontWeight.w400,
                      size: 13,
                      text: 'Item Name Item Name Item Name Item Name ',
                    ),
                  ),
                  Row(
                    children: [
                      // ignore: prefer_const_constructors
                      AutoSizeText('Amazon',
                          style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffCCCCCC))),
                      SizedBox(
                        width: 1.6.w,
                      ),
                      Icon(
                        Icons.flag,
                        size: 8.sp,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      AutoSizeText('Price',
                          style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffCCCCCC))),
                      SizedBox(
                        width: 3.w,
                      ),
                      SizedBox(
                        width: 27.w,
                        height: 25.sp,
                        child: WhiteText(
                            text: '15,000',
                            size: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Container(
                        child: Center(
                            child: Text(
                          'Add to cart',
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff9C9C9C)),
                        width: 21.1.w,
                        height: 22.3.sp,
                      )
                    ],
                  )
                ],
              )
            ]),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff797979)),
            width: 94.1.w,
            height: 81.sp,
          )),
    );
  }
}
