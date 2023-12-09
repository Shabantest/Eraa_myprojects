import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'modle/InstagramPostWidget.dart';
import 'LoginScreen.dart';
import 'modle/InstagramPost.dart';
class InstagramScreen extends StatelessWidget {
  const InstagramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Text("Instagram ",
                  style: TextStyle(
                    fontFamily: 'Insta',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Icon(Icons.add)),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 30,
                child: Stack(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 30,
                child: Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 1)),
                      child: Image.asset(
                        'assets/images/img.png',
                        width: 25,
                        height: 25,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.red),
                        child: Text(
                          "6",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return InstagramPostWidget(post: Instagramposts[index],);
          },
          separatorBuilder:(context, index) {
            return SizedBox(
              height: 2,
            );
          },
          itemCount: Instagramposts.length),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsDirectional.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.video_library_outlined,
                  size: 30,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.shopify,
                  size: 30,
                  color: Colors.white,
                )),
            CircleAvatar(
              radius: 12,
              backgroundImage: Image.asset(
                'assets/images/myimage.png',
                fit: BoxFit.cover,
              ).image,
            ),
          ],
        ),
      ),
    );
  }
}


