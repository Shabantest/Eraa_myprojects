import 'package:flutter/material.dart';
import 'package:workshop/screens/sginup/sign_up.dart';
import 'package:workshop/uitils/Text_custom.dart';
import 'package:workshop/uitils/navigation.dart';
import '../uitils/Colors.dart';
class TextButtonCustom extends StatelessWidget {
  String text;
  void Function()? onPressed;
    TextStyle ? style =TextStyle();
   TextButtonCustom({this.onPressed,required this.text,  this.style,super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed,
        child: Text(text,style: style,),

    );
  }
}
