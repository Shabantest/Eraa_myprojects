import 'package:flutter/cupertino.dart';
import 'package:workshop/screens/home/componante/product_component.dart';
import 'package:workshop/screens/home/model/product_model.dart';
import '../../../componants/text_button.dart';
import '../../../uitils/Text_custom.dart';
class BestSellingSction extends StatelessWidget {
  const BestSellingSction({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best Selling",
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
        SizedBox(height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                BestProductCustom(product: bestProducts[index]),
            separatorBuilder: (context, index) => SizedBox(width: 20,),
            itemCount: bestProducts.length,
          ),
        ),

      ],
    );
  }
}
