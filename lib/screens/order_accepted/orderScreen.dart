import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/componants/bottom_navigaton_bar.dart';
import 'package:workshop/componants/material_Button.dart';
import 'package:workshop/screens/cart/cart_screen.dart';
import 'package:workshop/uitils/Colors.dart';
import '../../componants/text_button.dart';
import '../../uitils/Text_custom.dart';
import '../../uitils/images.dart';
import '../../uitils/navigation.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Image.asset(AppImages.orederAccepted),
              SizedBox(
                height: 70,
              ),
              Text(
                "Your Order has been accepted",
                style: TextCustom.title2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Your items has been placcd and is on \n it’s way to being processed",
                style: TextCustom.productTitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 130,
              ),
              MaterialButtonCusttom(
                color: AppColors.green,
                textcolor: AppColors.white,
                text: "Track Order",
                onPressed: () {
                  Navigation.push(context, CartScreen());
                },
              ),
              TextButtonCustom(
                style: TextStyle(color: AppColors.black),
                text: "Back to home",
                onPressed: () {
                  Navigation.push(context, BottomNavigationCustom());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
