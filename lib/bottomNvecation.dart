import 'package:flutter/material.dart';
import 'GetStartedScreen.dart';
import 'HomeScreen.dart';
import 'NoneAcount.dart';
import 'StoreScreen.dart';
class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex=0;
  List<Widget> Screens=[
    HomeScreen(),
    GetStarted(),
    Store(),
    NoneAcount(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.09),
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        // onTap: (value) {
        //   setState(() {
        //     currentIndex=value;
        //   });
        // },
        items: [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            label: "target",
            icon: Icon(
              Icons.no_drinks_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: "shop",
            icon: Icon(
              Icons.shopping_bag_rounded,

            ),
          ),

          BottomNavigationBarItem(
            label: "Account",

            icon: Icon(
              Icons.person,

            ),
          ),
        ],
      ),
    );
  }
}
