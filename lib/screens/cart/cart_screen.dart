import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/screens/cart/model/cat_prduct_model.dart';
import 'package:workshop/uitils/Colors.dart';
import 'package:workshop/uitils/Text_custom.dart';
import '../../componants/material_Button.dart';
import '../../uitils/navigation.dart';
import '../checkout/checkout_screen.dart';
import 'component/cart_product_component.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Text(
          'My Cart',
          style: TextCustom.title2,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => CartProductCustom(
                        cartProduct: cartProduts[index],
                      ),
                  separatorBuilder: (context, index) => Divider(color: AppColors.gray),
                  itemCount: cartProduts.length),
            ),
            MaterialButtonCusttom(
              color: AppColors.green,
              textcolor: AppColors.white,
              text: "Go to Checkout",onPressed: () {
              Navigation.push(context, CheckoutScreen());
            },),
          ],
        ),
      ),
    );
  }
}
