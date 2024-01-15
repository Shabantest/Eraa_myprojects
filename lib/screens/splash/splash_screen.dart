import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../componants/text_button.dart';
import '../../uitils/Colors.dart';
import '../../uitils/Text_custom.dart';
import '../../uitils/images.dart';
import '../../uitils/navigation.dart';
import '../onbording/on_bording.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset(AppImages.whiteCarrot),
               Column(
                 children: [
                   TextButtonCustom(style: TextCustom.title,text:'nectar' ,onPressed: (){
                     Navigation.push(context, OnBording());
                   },),
                   Text( "o n l i n e g r o c e ri e t",style: TextCustom.Discription,),
                 ],
               ),
             ],
           ),

          ],
        ),
      ),
    );
  }
}
