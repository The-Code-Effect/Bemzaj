

import 'package:flutter/cupertino.dart';

class BemzajMainPAdding extends StatelessWidget {
  final double pading;
  final Widget widget;

  const BemzajMainPAdding({
    Key? key,
    required this.pading,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.only(start: pading), child: widget);
  }
}
