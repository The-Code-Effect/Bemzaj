
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  
  const WhiteText({
    Key? key,
    required this.text,
    required this.size,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
    
        style: TextStyle(
            fontSize: size, fontWeight: fontWeight, color: Colors.white));
  }
}


class HintText extends StatelessWidget {
  final String text;
  const HintText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Color(0xffAAAAAA)));
  }
}




class WhiteTextCentered extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  
  const WhiteTextCentered({
    Key? key,
    required this.text,
    required this.size,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
    textAlign: TextAlign.center,
    
        style: TextStyle(
            fontSize: size, fontWeight: fontWeight, color: Colors.white));
  }
}
