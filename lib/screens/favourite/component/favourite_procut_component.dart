import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../uitils/Text_custom.dart';
import '../../../uitils/icons.dart';
import '../model/favourite_product-model.dart';
class FavouriteProductCustom extends StatelessWidget {
  final FavouriteProduct product;
   FavouriteProductCustom({required this.product, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('${product.image??''}'),
          Expanded(
            child: Column(
              children: [
                Text('${product.name??''}',style: TextCustom.product,),
                Text('${product.title??''}',style:TextCustom.productTitle ,),
              ],
            ),
          ),
          Text('${product.price??''}',style: TextCustom.product,),
          SizedBox(width: 15,),
          IconButton(
            onPressed: () {
            },
              icon: AppIcons.arrow_back),
        ],
      ),
    );
  }
}
