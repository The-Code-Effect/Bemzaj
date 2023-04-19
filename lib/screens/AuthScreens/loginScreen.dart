import 'dart:io';

import 'package:bemzaj_store/screens/MainWidgets/textCustBemzaj.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../../consts/BemzajColors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool validate = true;
  Future<String> _checkInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {
        setState(() {});
        return 'success';
      }
      return 'success';
    } on SocketException catch (err) {
      return 'false';
    }
  }

  bool _showPassword = false;
  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 67.7.w,
                  height: 21.6.h,
                  child: Image.asset('assets/MainLogoB.png'),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Center(
                  child: Container(
                    width: 91.3.w,
                    // ignore: sort_child_properties_last
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 3.75.h,
                          ),
                          WhiteText(
                            text: 'Login',
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 2.62.h,
                          ),
                          PhoneTextField(phoneController: phoneController),
                          SizedBox(
                            height: 2.87.h,
                          ),
                          PasswordTextField(controller: phoneController, text: 'Password',),
                          SizedBox(
                            height: 3.75.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Color(0xff464646)),
                            child: Center(
                                child: WhiteText(
                                    text: 'Login',
                                    size: 18,
                                    fontWeight: FontWeight.bold)),
                            width: 77.7.w,
                            height: 42.5.sp,
                          ),
                          SizedBox(
                            height: 2.87.h,
                          ),
                          Text(
                            'Forget Password',
                            style: TextStyle(
                                color: Color(0xffAAAAAA),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 3.5.h,
                          ),
                        ]),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff797979)),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<dynamic> alertDialog(
  //     BuildContext context, String title, String message) async {
  //   return await NAlertDialog(
  //     dialogStyle: DialogStyle(titleDivider: true),
  //     title: Text(title,
  //         style: TextStyle(
  //             fontSize: 14.sp,
  //             color: Color(0xff707070),
  //             fontWeight: FontWeight.w600)),
  //     content: Text(message,
  //         style: TextStyle(
  //             fontSize: 11.sp,
  //             color: Color(0xff707070),
  //             fontWeight: FontWeight.w600)),
  //     actions: <Widget>[
  //       TextButton(
  //           child: Text("Ok"),
  //           onPressed: () {
  //             Navigator.pop(context);
  //           }),
  //     ],
  //   ).show(context);
  // }

}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    required this.controller, required this.text,
  }) : super(key: key);

  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 77.7.w,
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: WhiteText(
                text: text,
                size: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 4.sp,
            ),
            Container(
              width: 77.7.w,
              height: 35.sp,
              child: TextFormField(
                controller: controller,
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
                          BorderSide(color: BemzajColors.c9color, width: .5),
                    )),
                // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
              ),
            ),
          ],
        ));
  }
}

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    Key? key,
    required this.phoneController,
  }) : super(key: key);

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 77.7.w,
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: WhiteText(
                text: 'Phone Number',
                size: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 4.sp,
            ),
            Container(
              width: 77.7.w,
              height: 35.sp,
              child: TextFormField(
                controller: phoneController,
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
                // ignore: unnecessary_new
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
                          BorderSide(color: BemzajColors.c9color, width: .5),
                    )),
                // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
              ),
            ),
          ],
        ));
  }
}
