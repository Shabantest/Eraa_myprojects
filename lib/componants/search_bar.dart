import 'package:flutter/cupertino.dart';

import '../uitils/Colors.dart';
import '../uitils/icons.dart';

class SearchBArCustom extends StatelessWidget {
  String? hintext;

  SearchBArCustom({this.hintext, super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(

      enabled: true,
      prefixIcon: AppIcons.search,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15),
        border: Border.all(color: AppColors.gray),

      ),
    );
  }
}
