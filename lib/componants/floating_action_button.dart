import 'package:flutter/material.dart';

import '../uitils/Colors.dart';
import '../uitils/icons.dart';

class FloatingActionButtonCustom extends StatelessWidget {
  const FloatingActionButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(17)),
      child: AppIcons.add,
        onPressed: () {
        },
      backgroundColor: AppColors.green,
    );
  }
}
