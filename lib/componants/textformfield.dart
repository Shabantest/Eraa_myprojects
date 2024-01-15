import 'package:flutter/material.dart';
import 'package:workshop/uitils/icons.dart';

import '../uitils/Colors.dart';

class TextFormFiledEmail extends StatelessWidget {
  String hintTxt, label;

  TextFormFiledEmail({required this.hintTxt, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintTxt,
        labelText: label,
      ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: (value) {
      if ((value ?? '').isEmpty) {
        return "please enter your Email";
      }
    }
    );
  }
}

class TextFormFiledPassword extends StatefulWidget{
  String hintTxt, label;
  static GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextFormFiledPassword(
      {required this.hintTxt, required this.label, super.key});

  @override
  State<TextFormFiledPassword> createState() => _TextFormFiledPasswordState();
}

class _TextFormFiledPasswordState extends State<TextFormFiledPassword> {
  bool obscure = true;

  TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: TextFormFiledPassword.formkey,
      child: TextFormField(
        controller: passwordController,
        decoration: InputDecoration(
          hintText: widget.hintTxt,
          labelText: widget.label,
          suffixIcon: IconButton(onPressed: () {
              setState(() {
                obscure=!obscure;
              });
          }, icon:
        obscure ?  AppIcons.visibility: AppIcons.visibilitt_off,
          color:  obscure ? AppColors.green:AppColors.red ,
          ),
        ),
        obscureText: obscure,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if ((value ?? '').isEmpty) {
            return "please enter your password";
          } else if ((value?.length ?? 0) < 8) {
            return " passsword can't to be less  than  8 characters";
          } else if (!RegExp(r'[A-Z]').hasMatch(value ?? '')) {
            return " Password Must contain  at least one capital letter";
          } else if (!RegExp(r'[0-9]').hasMatch(value ?? '')) {
            return " Password Must contain  at least one numbers";
          } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
              .hasMatch(value ?? '')) {
            return " Password Must contain  at least one spacial \n characters";
          }
          return null;
        },

      ),
    );
  }
}

class TextformUserName extends StatelessWidget {
  String hintText,label;
   TextformUserName({required this.hintText,required this.label,super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: label,
      ),
    );
  }
}

