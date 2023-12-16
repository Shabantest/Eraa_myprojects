import 'package:flutter/material.dart';
import 'modle/userWidget.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 51, 63, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 51, 63, 1),
        leading: Container(
          margin: EdgeInsetsDirectional.all(15),
          padding: EdgeInsetsDirectional.all(5),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Color.fromRGBO(40, 51, 63, 1),
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(7)),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 15,
          ),
        ),
        title: Text(
          'New Wallet',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        actions: [
          Icon(
            Icons.credit_card,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.add_card,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return UserWidget();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                  itemCount: 10),
            ),
            Container(
              padding: EdgeInsetsDirectional.all(30),
              height: 130,
              width: 360,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 58, 81, 1),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today’s Special',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Get 2x point for every steps, only valid for today',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/images/girle.png'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 74,
                  width: 74,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                    ),
                    color: Color.fromRGBO(47, 60, 80, 0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/tiger.png'),
                      Text(
                        'Puma',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 74,
                  width: 74,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                    ),
                    color: Color.fromRGBO(47, 60, 80, 0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/ex.png'),
                      Text(
                        'Reebok',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 74,
                  width: 74,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                    ),
                    color: Color.fromRGBO(47, 60, 80, 0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/true.png'),
                      Text(
                        'Nike',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 74,
                  width: 74,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                    ),
                    color: Color.fromRGBO(47, 60, 80, 0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/adidas.png'),
                      Text(
                        'Adidas',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 74,
                  width: 74,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                    ),
                    color: Color.fromRGBO(47, 60, 80, 0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Vector.png'),
                      Text(
                        'UA',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 74,
                  width: 74,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                    ),
                    color: Color.fromRGBO(47, 60, 80, 0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Asics',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 74,
                  width: 74,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                    ),
                    color: Color.fromRGBO(47, 60, 80, 0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Reebok',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 74,
                  width: 74,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                    ),
                    color: Color.fromRGBO(47, 60, 80, 0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'See ALL',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(123, 97, 255, 1),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.all(10),
                    height: 174,
                    width: 163,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(47, 60, 80, 0.4),
                      border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(255, 255, 255, 0.09),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Image.asset('assets/images/shoth.png'),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: EdgeInsetsDirectional.all(2),
                              margin: EdgeInsets.all(5),
                              height: 25,
                              width: 51,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromRGBO(47, 60, 80, 0.8),
                                border: Border.all(
                                  width: 1,
                                  color:
                                      Color.fromRGBO(255, 255, 255, 0.17),
                                ),
                              ),
                              child: Text(
                                '1200',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ]),
                        Text(
                          'Nike',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Air Force 1 Low \'07',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.all(10),
                    height: 174,
                    width: 163,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(47, 60, 80, 0.4),
                      border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(255, 255, 255, 0.09),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Image.asset('assets/images/shoth2.png'),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: EdgeInsetsDirectional.all(2),
                              margin: EdgeInsets.all(5),
                              height: 25,
                              width: 51,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromRGBO(47, 60, 80, 0.8),
                                border: Border.all(
                                  width: 1,
                                  color:
                                      Color.fromRGBO(255, 255, 255, 0.17),
                                ),
                              ),
                              child: Text(
                                '1200',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ]),
                        Text(
                          'Nike',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Air Force 1 Low \'07',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 400,
                height: 220,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 305,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(47, 60, 80, 1),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(255, 255, 255, 0.17)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.home_filled,
                                color: Colors.purple,
                                size: 40,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.no_drinks_sharp,
                                color: Colors.white70,
                                size: 40,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_bag_rounded,
                                color: Colors.white70,
                                size: 40,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: Colors.white70,
                                size: 40,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
