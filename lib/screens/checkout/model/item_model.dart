import 'package:flutter/cupertino.dart';
import '../../../uitils/icons.dart';
class ItemModel{
  String? name;
  String? title;
  Icon? icon;
  ItemModel({this.name, this.title, this.icon});
}
List<ItemModel> items=[
 ItemModel(
    icon: AppIcons.arrow_back,
    name: 'Delivery',
      title: 'Select Method',
  ), ItemModel(
    icon: AppIcons.arrow_back,
    name: 'Pament',
  ), ItemModel(
    icon: AppIcons.arrow_back,
    name: 'Promo Code',
      title: 'Pick discount',
  ), ItemModel(
    icon: AppIcons.arrow_back,
    name: 'Total Cost',
      title: '\$13.97',
  ),
];