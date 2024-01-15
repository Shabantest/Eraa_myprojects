import 'package:flutter/cupertino.dart';
import '../../../componants/search_bar.dart';
import '../../../uitils/Text_custom.dart';
import '../../../uitils/icons.dart';
import '../../../uitils/images.dart';
class SectionBAr extends StatelessWidget {
  const SectionBAr({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.carrot,
          height: 50,
          width: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcons.location,
            Text(
              "Dhaka, Banassre",
              style: TextCustom.Dhaka,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SearchBArCustom(),
      ],
    );
  }
}
