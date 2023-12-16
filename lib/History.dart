import 'package:flutter/material.dart';
class History extends StatelessWidget {
  const  History({super.key});
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
          'History',
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(10),
                  height: 120,
                  width: 367,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.17),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 0.17),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/timer.png',
                              width: 20, height: 20),
                          Text(
                            '18,3 h',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Time',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/routing.png',
                              width: 20, height: 20),
                          Text(
                            '48,7 km',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Distance',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/heart-circle.png',
                              width: 20, height: 20),
                          Text(
                            '123 bpm',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Heart Beat',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsetsDirectional.all(15),
                      width: 350,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(47, 60, 80, 0.4),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1,
                          color: Color.fromRGBO(255, 255, 255, 0.09),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '27 May',
                                  style: TextStyle(
                                    color: Color.fromRGBO(123, 97, 255, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '12,4 km . 1222 kcal',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '11,120 ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Steps',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                    itemCount: 15,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
