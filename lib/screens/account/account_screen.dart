import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/screens/account/component/user_companent.dart';
import 'package:workshop/screens/account/model/user_model.dart';

import '../../componants/material_Button.dart';
import '../../uitils/Colors.dart';
import '../../uitils/navigation.dart';
import '../loging/login_screen.dart';
import 'component/items_component.dart';
import 'model/items_model.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 40, left: 15, right: 15, top: 15),
          child: Center(
            child: Column(
              children: [
                UserCustom(user: user[0]),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: AppColors.gray,
                ),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          ItemsCustom(item: items[index]),
                      separatorBuilder: (context, index) =>
                          Divider(color: AppColors.gray),
                      itemCount: items.length),
                ),
                Divider(
                  color: AppColors.gray,
                ),
                MaterialButtonCusttom(
                  onPressed: () {
                    Navigation.push(context, LoginScreen());
                  },
                  text: "Log Out",
                  color: AppColors.wihte2,
                  textcolor: AppColors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
