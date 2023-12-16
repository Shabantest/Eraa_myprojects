import 'dart:html';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 51, 63, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromRGBO(123, 97, 255, 1),
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: Image.asset(
                'assets/images/user.png',
                fit: BoxFit.cover,
              ).image,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  'HELLO!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Daniela!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.gif_box,
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: [ Column(
          children: [
            Container(
              height: 380,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(123, 97, 255, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '14,000 / 15,000 steps ',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                        Text(
                          'Level 5',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(255, 201, 50, 1)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/Level badge.png'),
                      ],
                    ),
                    Image.asset('assets/images/Group 34592.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: 343,
                        height: 87,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(255, 255, 255, 0.17)),
                            color: Color.fromRGBO(255, 255, 255, 0.17)),
                        child: Padding(
                          padding: EdgeInsetsDirectional.all(15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color.fromRGBO(123, 97, 255, 1),
                                child: Image.asset('assets/images/Group 2.png'),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      '26 May',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color.fromRGBO(67, 196, 101, 1)),
                                    ),
                                    Text('01 : 09 : 44 ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                              Image.asset(
                                'assets/images/Radius.png',
                                width: 64,
                                height: 64,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 163,
                          height: 125,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.17),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(255, 255, 255, 0.17)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('53,524',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 38,
                                        color: Colors.white)),
                                Text('Steps',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 163,
                          height: 125,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.17),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(255, 255, 255, 0.17)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('53,524',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 38,
                                        color: Colors.white)),
                                Text('Steps',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 343,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color.fromRGBO(130, 175, 255, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Share & Get',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Get 2x point for every steps,'
                            ' only valid for today',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 65,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(47, 60, 80, 0.2),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.all(3),
                              child: Text(
                                'Share',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 125,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(241, 73, 133, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset('assets/images/group3.png'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'History',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color.fromRGBO(123, 97, 255, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsetsDirectional.all(16),
              height: 72,
              width: 343,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.09),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '27 May',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(123, 97, 255, 1),
                          ),
                        ),
                        Text(
                          '100 pt',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(241, 73, 133, 1),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '. 12,4 km .1222 kcal',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(205, 205, 205, 1),
                      ),
                    ),
                    Text(
                      '10,120 Steps',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsetsDirectional.all(16),
              height: 72,
              width: 343,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.09),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '27 May',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(123, 97, 255, 1),
                          ),
                        ),
                        Text(
                          '100 pt',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(241, 73, 133, 1),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '. 12,4 km .1222 kcal',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(205, 205, 205, 1),
                      ),
                    ),
                    Text(
                      '10,120 Steps',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
    ]
      ),

    );
  }
}
