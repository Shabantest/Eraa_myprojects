import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/screens/explore/model/explore_product_model.dart';
import '../../../uitils/Colors.dart';
import '../../../uitils/Text_custom.dart';
class ExploreProductCustom extends StatelessWidget {
  final ExploreProduct product;
   ExploreProductCustom({ required this.product,super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(5),
      padding: EdgeInsetsDirectional.all(7),
      height: 190,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(18),
        border: Border.all(color: AppColors.orange,width: 1),
        color: Color.fromRGBO(83, 177, 117, 0.1),
      ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset('${product.image??''}')),
        Text('${product.name??''}',style: TextCustom.product,textAlign: TextAlign.center,),
      ],
    ),

    );
  }
}
