import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/uitils/Text_custom.dart';
import '../model/cat_prduct_model.dart';
class CartProductCustom extends StatefulWidget {
  final CartProduct cartProduct;

   CartProductCustom({ required this.cartProduct,super.key});

  @override
  State<CartProductCustom> createState() => _CartProductCustomState();
}

class _CartProductCustomState extends State<CartProductCustom> {
  int number=0;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsetsDirectional.all(10),
          padding: EdgeInsetsDirectional.all(10),
          width: 400,
          height: 210,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Text('${widget.cartProduct.name??''}',style: TextCustom.product,),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      '${widget.cartProduct.exit??''}',
                      style: TextCustom.exit,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('${widget.cartProduct.image??''}'),
                    SizedBox(width: 80,),
                    Text(
                      '${widget.cartProduct.title??''}',style: TextCustom.productTitle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 50,),
                    TextButton(

                      onPressed: () {
                        if( number>0) {
                          setState(() {
                            number--;
                          });
                        }
                      },
                      child: Text("${widget.cartProduct.minus??''}",style: TextCustom.minus,),
                    ),
                    SizedBox(width: 5,),
                    Text("$number",style: TextCustom.number),
                    SizedBox(width: 5,),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          number>0;
                          number++;
                        });
                      },
                      child: Text("${widget.cartProduct.plus??''}",style: TextCustom.plus),
                    ),
                    SizedBox(width: 20,),
                    Text("${widget.cartProduct.price??''}",style: TextCustom.product),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
