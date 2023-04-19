import 'package:bemzaj_store/screens/MainWidgets/textCustBemzaj.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../consts/BemzajColors.dart';
import 'MainWidgets/apppBar.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets.getAppBar(
          'All Orders', true, BemzajColors.appBar, context),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            MoreListTile(text: "Profile",),
            MoreListTile(text: 'Sign In / Sign up',),
            MoreListTile(text: "Policies",),
            MoreListTile(text: "About BMazaj",),
            MoreListTile(text: "Contact Us",),

           

            SizedBox(
                height: 111.6.sp
            ),
             Center(
                child: WhiteText(fontWeight: FontWeight.bold,size: 16,text: 'Logout',),
            ),
          ]),
              ),
        ),
      ),
    );
  }
}

class MoreListTile extends StatelessWidget {
  final String text;
  const MoreListTile({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Color(0xffD9D9D9))),
      ),
      width: 100.w,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(25.sp, 19.2.sp, 25.sp, 19.2.sp),
        child: WhiteText(
          text: text,
          size: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
