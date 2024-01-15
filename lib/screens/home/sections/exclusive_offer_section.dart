import 'package:flutter/cupertino.dart';
import 'package:workshop/screens/home/model/product_model.dart';
import '../../../componants/text_button.dart';
import '../../../uitils/Text_custom.dart';
import '../componante/product_component.dart';

class ExclusiveOfferSection extends StatelessWidget {
  const ExclusiveOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Exclusive Offer",
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
        SizedBox(height:240 ,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ExclusiveProductCustom(
                    product: exclusiveProducts[index],
                  ),
            separatorBuilder: (context, index) => SizedBox(width: 20,),
            itemCount: exclusiveProducts.length,
          ),
        ),
      ],
    );
  }
}
