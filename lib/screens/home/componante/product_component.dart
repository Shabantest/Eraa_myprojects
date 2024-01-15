import 'package:flutter/cupertino.dart';
import 'package:workshop/screens/home/model/product_model.dart';
import 'package:workshop/uitils/Colors.dart';
import 'package:workshop/uitils/Text_custom.dart';
import '../../../componants/floating_action_button.dart';
class ExclusiveProductCustom extends StatelessWidget {
   final ExclusiveProduct  product;
   ExclusiveProductCustom({ required this.product, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10),
      width: 180,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: AppColors.gray),
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset("${product.image ?? ''}")),
          Text("${product.name ?? ''}",style: TextCustom.product,),
          Text("${product.title ?? ''}",style: TextCustom.productTitle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${product.price ?? ''}",style:TextCustom.Dhaka,),
              FloatingActionButtonCustom(),
            ],
          )
        ],
      ),
    );
  }
}
class BestProductCustom extends StatelessWidget {
  final BestProduct  product;
  BestProductCustom({ required this.product, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10),
      width: 180,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: AppColors.gray),
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset("${product.image ?? ''}")),
          Text("${product.name ?? ''}",style: TextCustom.product,),
          Text("${product.title ?? ''}",style: TextCustom.productTitle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${product.price ?? ''}",style:TextCustom.Dhaka,),
              FloatingActionButtonCustom(),
            ],
          )
        ],
      ),
    );
  }
}class GroceriesProductCustom extends StatelessWidget {
  final GroceriesProduct  product;
  GroceriesProductCustom({ required this.product, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.all(10),
      width: 250,
      height: 110,
      decoration: BoxDecoration(
        color: AppColors.orange,
        border: Border.all(width: 1,color: AppColors.gray),
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("${product.image ?? ''}"),
              Text("${product.name ?? ''}",style: TextCustom.product,),
            ],
          ),
    );
  }
}
class MeetProductCustom extends StatelessWidget {
  final MeetProduct product;

  MeetProductCustom({ required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10),
      width: 180,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.gray),
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset("${product.image ?? ''}")),
          Text("${product.name ?? ''}", style: TextCustom.product,),
          Text("${product.title ?? ''}", style: TextCustom.productTitle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${product.price ?? ''}", style: TextCustom.Dhaka,),
              FloatingActionButtonCustom(),
            ],
          )
        ],
      ),
    );
  }
}
