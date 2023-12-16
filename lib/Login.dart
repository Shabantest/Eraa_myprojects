import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 35),
            padding: EdgeInsetsDirectional.all(32),
            width: 327,
            height: 302,
            decoration: BoxDecoration(
              color: Color.fromRGBO(40, 51, 63, 1),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                width: 1,
                color: Color.fromRGBO(255, 255, 255, 0.17),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Icon(
                  Icons.person,
                  size: 90,
                  color: Colors.green,
                ),
                Text(
                  'Account Updated',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                  ),
                ),
                Text(
                  'Your account details have been successfully changed',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(10),
                  height: 56,
                  width: 279,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(123, 97, 255, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(onPressed: () {

                  },
                  child:Text('Ok',style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),) ,
                  ),
                  
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
