import 'package:flutter/cupertino.dart';
import 'package:workshop/screens/home/componante/product_component.dart';
import 'package:workshop/screens/home/model/product_model.dart';

class MeetSection extends StatelessWidget {
  const MeetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              MeetProductCustom(product: meetProducts[index]),
          separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
          itemCount: meetProducts.length),
    );
  }
}
