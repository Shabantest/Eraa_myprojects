import 'package:flutter/cupertino.dart';
import 'package:workshop/screens/home/model/product_model.dart';
import '../../../componants/text_button.dart';
import '../../../uitils/Text_custom.dart';
import '../componante/product_component.dart';

class GroceriesSection extends StatelessWidget {
  const GroceriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Groceries",
              style: TextCustom.Exclusive,
            ),
            TextButtonCustom(
              text: "See all",
              style: TextCustom.Discription3,
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                GroceriesProductCustom(product : groceriesproduct[index]),
            separatorBuilder: (context, index) => SizedBox(width: 20,),
            itemCount: groceriesproduct.length,
          ),
        ),

      ],
    );
  }
}
