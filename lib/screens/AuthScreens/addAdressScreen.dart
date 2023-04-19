import 'package:bemzaj_store/consts/BemzajColors.dart';
import 'package:bemzaj_store/screens/MainWidgets/mainPAding.dart';
import 'package:bemzaj_store/screens/MainWidgets/textCustBemzaj.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  @override
  Widget build(BuildContext context) {
    print(1.sp);
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           SizedBox(
            height: 35.3.sp,
          ),
          Text('Please enter your delivery\naddress',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)
          , SizedBox(
            height: 10.sp,
          ),
          const Text(
            'Optional',
            style: TextStyle(
                color: Color(0xff2295BA),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
           SizedBox(
            height: 58.sp,
          ),
          Center(
            child: Container(
              width: 273.3.sp,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: BemzajColors.seven9color),
              child: 
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal:20.sp ),
                   child: Column(children: [
                    SizedBox(height:13.sp ,),


                     Align(
                       
                       alignment: AlignmentDirectional.centerStart,
                       child: WhiteText(text: 'Address', size: 14, fontWeight: FontWeight.w400))
             , SizedBox(height: 5.sp,),
             TextFormField(),
                            SizedBox(height: 5.sp,),
                            Align(
                              
                                                     alignment: AlignmentDirectional.centerStart,

                              child: HintText(text: 'hint text to help user')),
                                                   SizedBox(height: 12.5.sp,),
                                                    Container(
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(9),
                                     color: Color(0xff464646)),
                                 child: Center(
                                     child: WhiteText(
                                         text: 'Continue',
                                         size: 18,
                                         fontWeight: FontWeight.bold)),
                                 width: 234.1.sp,
                                 height: 42.5.sp,
                               ),

SizedBox(height:15.sp ,)

                     
                   ],
                   ),
                 ),
                
              
            ),
          ),
          SizedBox(
            height: 27.0.sp,
          ),
          const Text(
            'Skip',
            style: TextStyle(
                color: Color(0xff2295BA),
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 34.1.sp,
          )
        ],
      )),
    );
  }
}
