import 'package:flutter/material.dart';
import 'package:workshop/screens/home/home_screen.dart';
import 'package:workshop/componants/text_button.dart';
import 'package:workshop/componants/textformfield.dart';
import 'package:workshop/uitils/Text_custom.dart';
import '../../componants/bottom_navigaton_bar.dart';
import '../../componants/material_Button.dart';
import '../../uitils/Colors.dart';
import '../../uitils/images.dart';
import '../../uitils/navigation.dart';
import '../sginup/sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(child: Image.asset(AppImages.carrot)),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Loging',
                  style: TextCustom.title2,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter your emails and password',
                  style: TextCustom.Discription2,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormFiledEmail(hintTxt: "Enter your email", label: "Email"),
                SizedBox(
                  height: 30,
                ),
                TextFormFiledPassword(
                    hintTxt: "Enter your password", label: "password"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButtonCusttom(
                  color: AppColors.green,
                    textcolor: AppColors.white,
                    text: "Log In",
                    onPressed: () {
                      if (TextFormFiledPassword.formkey.currentState!
                          .validate()) {
                      }
                      Navigation.push(context, BottomNavigationCustom(),);
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don’t have an account? "),
                    TextButtonCustom(style: TextCustom.Discription3,
                        text: "Singup",
                        onPressed: () {
                          Navigation.push(context, SginUpScreen());
                        }),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
