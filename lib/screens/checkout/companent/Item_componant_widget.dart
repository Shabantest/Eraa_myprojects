import 'package:flutter/cupertino.dart';
import 'package:workshop/uitils/Text_custom.dart';
import '../model/item_model.dart';
class ItemWidget extends StatelessWidget {
  final ItemModel item;
  ItemWidget({required this.item, super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text('${item.name??''}',style: TextCustom.productTitle,)),
        Text("${item.title??''}",style: TextCustom.product,),
        SizedBox(width: 20,),
        item.icon!,
      ],
    );
  }
}
