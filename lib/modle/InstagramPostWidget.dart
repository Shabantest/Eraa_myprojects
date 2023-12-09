import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'InstagramPost.dart';
class InstagramPostWidget extends StatelessWidget {
 final Post post;
  const InstagramPostWidget({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: EdgeInsetsDirectional.all(13),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: Image.asset(
                post.user?.Image??'',
                fit: BoxFit.cover,
              ).image,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                post.user?.name??'',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
      Image.asset(
        post.Image??'',
        width: double.infinity,
      ),
      SizedBox(
        height: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 25,
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.comment,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[300],
                    radius: 5,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 4,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 2,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_add_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundImage: Image.asset(
                  'assets/images/myimage.png',
                  fit: BoxFit.cover,
                ).image,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "liked by flutter deviser and ${post.likes??''}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
          post.Title??'',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            " View ${post.comments??''} comments",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    ]);
  }
}
