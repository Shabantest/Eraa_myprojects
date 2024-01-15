import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../componants/search_bar.dart';
import '../../uitils/Colors.dart';
import '../../uitils/Text_custom.dart';
import 'component/explor_product_component.dart';
import 'model/explore_product_model.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Text(
          'Find Products',
          style: TextCustom.title2,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SearchBArCustom(),
            SizedBox(height: 40,),
            Expanded(
              child: GridView.builder(
                
                scrollDirection: Axis.vertical,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) =>
                    ExploreProductCustom(product: exploreProducts[index]),
                itemCount: exploreProducts.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
