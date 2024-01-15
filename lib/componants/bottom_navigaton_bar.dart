import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/screens/home/home_screen.dart';
import '../screens/account/account_screen.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/explore/explore_screen.dart';
import '../screens/favourite/favourite_screen.dart';
import '../uitils/Colors.dart';
import '../uitils/icons.dart';
import '../uitils/navigation.dart';
class BottomNavigationCustom extends StatefulWidget {
   BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
   int currentIndex =0;

   List<Widget> screens=[
     HomeScreen(),
     ExploreScreen(),
     CartScreen(),
     FavouriteScreen(),
     AccountScreen(),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex=value;
          });
        },
        showUnselectedLabels: true,
          selectedItemColor: AppColors.green,
          unselectedItemColor:AppColors.black,
          items: [
        BottomNavigationBarItem(
          icon: AppIcons.shop,
          label: "Shop",
        ),
        BottomNavigationBarItem(
          icon: AppIcons.explore,
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: AppIcons.Cart,
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: AppIcons.favoured,
          label: "Favourite",
        ),
        BottomNavigationBarItem(
          icon: AppIcons.person,
          label: "Account",
        ),
      ]),
    );
  }
}
