import 'package:flutter/material.dart';

import '../uitils/icons.dart';
class MaterialButtonCusttom extends StatelessWidget {
  String text;
  Color? color;
  Color? textcolor;
  void Function()? onPressed;
  MaterialButtonCusttom(
      {this.textcolor,
      this.color,
      this.onPressed,
      required this.text,
      super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(19),
      ),
      height: 67,
      minWidth: 353,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ]
      ),
      textColor: textcolor,
      color: color,
    );
  }
}
