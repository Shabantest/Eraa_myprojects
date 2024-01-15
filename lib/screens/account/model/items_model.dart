import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Items{
  String? name;
  Icon? icon1;
  Icon? icon2;
  Items({this.name,this.icon1,this.icon2});
}
List<Items> items=[
  Items(
    name: 'Orders',
    icon1:Icon( Icons.shopping_bag, size: 30,),
    icon2:Icon(Icons.arrow_forward_ios, size: 20,) ,
  ),  Items(
    name: 'My Details',
    icon1: Icon( Icons.payment, size: 30,) ,
    icon2:Icon(Icons.arrow_forward_ios, size: 20,) ,
  ),  Items(
    name: 'Delivery Address',
    icon1:Icon(Icons.location_on, size: 30,) ,
    icon2:Icon(Icons.arrow_forward_ios, size: 20,) ,
  ),  Items(
    name: 'Payment Methods',
    icon1: Icon( Icons.payments, size: 30,) ,
    icon2:Icon(Icons.arrow_forward_ios, size: 20,) ,
  ),  Items(
    name: 'Promo Cord',
    icon1:Icon( FontAwesomeIcons.buyNLarge, size: 30,),
    icon2:Icon(Icons.arrow_forward_ios, size: 20,) ,
  ),  Items(
    name: 'Notifecations ',
    icon1:Icon( Icons.notification_add, size: 30,) ,
    icon2:Icon(Icons.arrow_forward_ios, size: 20,) ,
  ),  Items(
    name: 'Help',
    icon1:Icon( Icons.help, size: 30,) ,
    icon2:Icon(Icons.arrow_forward_ios, size: 20,) ,
  ),  Items(
    name: 'About ',
    icon1:Icon( Icons.help_outline_sharp, size: 30,) ,
    icon2:Icon(Icons.arrow_forward_ios, size: 20,) ,
  ),

];