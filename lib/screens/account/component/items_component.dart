import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/uitils/Text_custom.dart';
import '../model/items_model.dart';
class ItemsCustom extends StatelessWidget {
  final Items item;
   ItemsCustom({required this.item, super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          item.icon1!,
          Text('${item.name}',style: TextCustom.product,),
          IconButton(
            onPressed: () {

            },
              icon: item.icon2!) ,
        ],
      ),
    );
  }
}
