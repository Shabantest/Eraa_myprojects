import 'dart:ui';

import 'package:flutter/material.dart';

class FacebookScreen extends StatefulWidget {
  const FacebookScreen({super.key});

  @override
  State<FacebookScreen> createState() => _FacebookScreenState();
}

class _FacebookScreenState extends State<FacebookScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(

                children: [
                  SizedBox(height: 40,),
                  Text("Welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text("pleas login or sign up continue our app",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                    ),
                  SizedBox(height: 40,),
                  Image.asset('assets/images/img_1.png',
                    fit: BoxFit.cover,
                          width: 350,
                    height: 300,
                  ),
                  SizedBox(height: 40,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/img_3.png',
                              fit: BoxFit.fill,
                              width: 150,
                              height:60 ,
                            ),
                          ),
                        SizedBox(width: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/img.png',
                            fit: BoxFit.fill,
                            width: 150,
                            height:60 ,
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: double.infinity,
                      margin: EdgeInsets.only(left: 30,right: 30),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("you can also ",
                        style: TextStyle(
                          color: Colors.black12,
                        ),
                          ),
                      SizedBox(width: 5,),
                      Text("login",
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
