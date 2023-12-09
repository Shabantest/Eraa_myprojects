import 'dart:io';
import 'package:eraa_projects/modle/Instagramuser.dart';
import 'package:flutter/cupertino.dart';

class Post{
  User? user;
  String? Image;
  String? Title;
  int? likes;
  int? comments;
  Post({this.user, this.Image, this.Title, this.likes, this.comments});
}
List<Post> Instagramposts =[
  Post(
    user:User(
      Image:  'assets/images/useImage.png',
      name:'Emad Ahmed' ,
    ),
    Image: 'assets/images/postimage.png',
    Title: 'Instagram is a free photo and video sharing app available on iPhone and Android',
    comments: 80,
    likes: 97,

  ),
  Post(
    user:User(
      Image:  'assets/images/user2image.png',
      name:'Khaled Amear' ,
    ),
    Image: 'assets/images/post2image.png',
    Title: 'Instagram is a free photo and video sharing app available on iPhone and Android',
    comments: 50,
    likes: 70,
  ),
  Post(
user:User(
Image:  'assets/images/user3image.png',
name:'Aya Mohamed',
),
Image: 'assets/images/post3image.png',
Title: 'a Dream Girl is never going to be about what you look like or how much you',
comments: 200,
likes: 189,
),


];