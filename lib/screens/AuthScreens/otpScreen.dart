import 'package:bemzaj_store/consts/BemzajColors.dart';
import 'package:bemzaj_store/screens/MainWidgets/textCustBemzaj.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    print(1.sp);
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5.sp,)
          ,Padding(
            padding:  EdgeInsetsDirectional.only(end: 7.7.w),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text('Change number',style: TextStyle(color:Color(0xff2295BA),fontSize: 14,fontWeight: FontWeight.w400 ),),
            ),
          ),
// 15
SizedBox(height: 12.5.sp,),

WhiteText(text: 'Enter authentication code', size: 20, fontWeight: FontWeight.bold)

//10
,
SizedBox(height: 8.3.sp,),


Text('Enter the 4 digit number that we’ve\nsent to +24990810819',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)
//46

,SizedBox(height: 38.3.sp,),

Pinput(
  defaultPinTheme: PinTheme(width: 47.5.sp,height:47.5.sp ,textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold), margin: EdgeInsets.symmetric(horizontal:5.sp ), decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(width: .5,color: BemzajColors.seven9color))),
  
    onCompleted: (pin) => print(pin),
  ),
Spacer(),
    Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: BemzajColors.seven9color),
                            child: Center(
                                child: WhiteText(
                                    text: 'Continue',
                                    size: 18,
                                    fontWeight: FontWeight.bold)),
                            width: 234.1.sp,
                            height: 42.5.sp,
                          ),
                          SizedBox(height: 29.1.sp,),

                          Text('Resend Code',style: TextStyle(color:Color(0xff2295BA),fontSize: 14,fontWeight: FontWeight.bold ),),
SizedBox(height: 34.1.sp,)

        ],
      )),
    );
  }
}
