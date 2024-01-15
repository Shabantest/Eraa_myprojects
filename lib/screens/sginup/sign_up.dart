import 'package:flutter/material.dart';
import 'package:workshop/componants/text_button.dart';
import 'package:workshop/uitils/Text_custom.dart';
import '../../componants/material_Button.dart';
import '../../componants/textformfield.dart';
import '../../uitils/Colors.dart';
import '../../uitils/images.dart';
import '../../uitils/navigation.dart';
import '../loging/login_screen.dart';

class SginUpScreen extends StatelessWidget {
  const SginUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsetsDirectional.all(20),
            children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Center(child: Image.asset(AppImages.carrot)),
              SizedBox(height: 50,),
              Text("Sign Up", style: TextCustom.title2,),
              SizedBox(height: 10,),
              Text('Enter your credentials to continue',
                style: TextCustom.Discription2,),
              TextformUserName(
                label: "Username ", hintText: "Enter your user name!",),
              SizedBox(height: 20,),
              TextFormFiledEmail(hintTxt: "Enter your Email", label: "Email"),
              SizedBox(height: 20,),
              TextFormFiledPassword(
                  hintTxt: "Enter your Password", label: "Password"),
              SizedBox(height: 20,),
              Text("By continuing you agree to our Terms of Service and Privacy Policy"),
              SizedBox(height: 50,),
              MaterialButtonCusttom(
                color: AppColors.green,
                textcolor: AppColors.white,
                text: "Sing Up",onPressed: (){
                if(TextFormFiledPassword.formkey.currentState!.validate()){

                }
                Navigation.push(context, LoginScreen());
              },),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Already have an account? "),
              TextButtonCustom(style: TextCustom.Discription3,text: " Sing up",onPressed: (){
                Navigation.push(context, LoginScreen());
              },),

                ],
              )
                ],
              ),
            ],
          )
      ),
    );
  }
}
