import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../uitils/Text_custom.dart';
import '../../../uitils/icons.dart';
import '../model/user_model.dart';

class UserCustom extends StatelessWidget {
  final User user;
  UserCustom({required this.user, super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('${user.image ?? ''}'),
        SizedBox(width: 20,),
        Column(
          children: [
            Text(
              "${user.name ?? ''}",
              style: TextCustom.title2,
            ),
            Text(
              "${user.email ?? ''}",
              style: TextCustom.productTitle,
            ),
          ],
        ),
        IconButton(
          onPressed: () {

          },
            icon: AppIcons.pen),
      ],
    );
  }
}
