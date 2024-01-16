import 'package:flutter/cupertino.dart';
import 'package:workshop/uitils/Text_custom.dart';
import '../../../componants/material_Button.dart';
import '../../../uitils/Colors.dart';
import '../../../uitils/icons.dart';
import '../../../uitils/navigation.dart';
import '../../order_accepted/orderScreen.dart';
import '../companent/Item_componant_widget.dart';
import '../model/item_model.dart';
class CheckSection extends StatelessWidget {
  const CheckSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: 414,
        padding: EdgeInsetsDirectional.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray, width: 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Checkout",
                    style: TextCustom.checkout,
                  ),
                ),
               AppIcons.exit,
              ],
            ),
            SizedBox(height: 30,),
            ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context, index) =>
                    ItemWidget(item: items[index]),
                separatorBuilder: (context, index) => SizedBox(
                      height: 30,
                    ),
                itemCount: items.length),
            SizedBox(height: 40,),
            Text(
              "By placing an order you agree to our ",
              style: TextCustom.productTitle,
            ),   Text(
              "Terms And Conditions ",
              style: TextCustom.number,
            ),
            SizedBox(height: 70,),
            MaterialButtonCusttom(
              color: AppColors.green,
              textcolor: AppColors.white,
              text: "Place Order",
              onPressed: () {
                Navigation.push(context, OrderScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
