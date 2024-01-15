import 'package:flutter/material.dart';
import 'package:workshop/screens/loging/login_screen.dart';
import 'package:workshop/uitils/Colors.dart';
import '../../componants/material_Button.dart';
import '../../uitils/Text_custom.dart';
import '../../uitils/images.dart';
import '../../uitils/navigation.dart';
class OnBording extends StatelessWidget {
  const OnBording({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.indigo,
      body: Stack(
        children: [
          Image.asset(AppImages.man, height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 370,),
                Image.asset(AppImages.whiteCarrot,),
                Text("Welcome", style: TextCustom.title,),
                Text("to our store", style: TextCustom.title,),
                Text("Ger your groceries in as fast as one hour",
                  style: TextCustom.Discription,),
                SizedBox(height: 50,),
                MaterialButtonCusttom(
                    color: AppColors.green,
                    textcolor: AppColors.white,
                    text: "Get started", onPressed: () {
                  Navigation.push(context, LoginScreen());
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
