import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/screens/cart/cart_screen.dart';
import 'package:workshop/screens/favourite/component/favourite_procut_component.dart';
import 'package:workshop/screens/favourite/model/favourite_product-model.dart';
import '../../componants/material_Button.dart';
import '../../uitils/Colors.dart';
import '../../uitils/Text_custom.dart';
import '../../uitils/navigation.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          'Favorurite',
          style: TextCustom.title2,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(bottom: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      FavouriteProductCustom(product: favouriteProduts[index]),
                  separatorBuilder: (context, index) => Divider(color: AppColors.gray),
                  itemCount: favouriteProduts.length),
            ),
            MaterialButtonCusttom(
              color: AppColors.green,
              textcolor: AppColors.white,
              text:" Add All To Cart",onPressed: () {
              Navigation.push(context, CartScreen());
            },),
          ],
        ),
      ),
    );
  }
}
