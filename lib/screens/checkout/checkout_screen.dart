import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/screens/checkout/section/check_sction.dart';
import '../../uitils/Colors.dart';
import '../../uitils/Text_custom.dart';
import '../cart/component/cart_product_component.dart';
import '../cart/model/cat_prduct_model.dart';
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextCustom.title2,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.separated(
                itemBuilder: (context, index) => CartProductCustom(
                      cartProduct: cartProduts[index],
                    ),
                separatorBuilder: (context, index) =>
                    Divider(color: AppColors.gray),
                itemCount: cartProduts.length),
          ),
            CheckSection(),
        ],
      ),
    );
  }
}
