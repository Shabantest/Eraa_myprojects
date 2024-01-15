import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/screens/home/sections/best_%20selling_section.dart';
import 'package:workshop/screens/home/sections/exclusive_offer_section.dart';
import 'package:workshop/screens/home/sections/groceries_section.dart';
import 'package:workshop/screens/home/sections/meet_section.dart';
import 'package:workshop/screens/home/sections/section_bar.dart';
import 'componante/fresh_vegetables.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
            child: Column(
          children: [
            SectionBAr(),
            Expanded(
              child: ListView(
                children:[ Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Vegetables(),
                    SizedBox(
                      height: 20,
                    ),
                    ExclusiveOfferSection(),
                    SizedBox(
                      height: 20,
                    ),
                    BestSellingSction(),
                    SizedBox(
                      height: 20,
                    ),
                    GroceriesSection(),
                    SizedBox(
                      height: 20,
                    ),
                    MeetSection(),
                  ],
                ),
          ]
              ),
            ),
          ],
        )
        ),
      ),

    );
  }
}
