import 'package:flutter/material.dart';

class Facebook2 extends StatefulWidget {
  const Facebook2({super.key});

  @override
  State<Facebook2> createState() => _Facebook2State();
}

class _Facebook2State extends State<Facebook2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign Up ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text("please login up to enter app",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset('assets/images/img_3.png',
                    width: 150,
                    height:50 ,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 10,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset('assets/images/img_2.png',
                      width: 150,
                      height:50 ,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text("login up with email ",
              style: TextStyle(
                color: Colors.grey,

              ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Emial",
                      textAlign: TextAlign.start,
                    ),
                   Container(
                     margin: EdgeInsets.only(left: 5,right: 30),
                       child: Divider( color: Colors.black ),
                   ),
                    SizedBox(height: 40,),
                    Text("Password",
                      textAlign: TextAlign.start,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 30),
                      child: Divider( color: Colors.black ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                       CircleAvatar(
                         backgroundColor: Colors.blue,
                         radius: 10,

                       ),
                        Text("I agryee with Private Privcy",),

                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                margin: EdgeInsetsDirectional.all(40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: Text(" Sign Up ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,

                ),
                textAlign: TextAlign.center,
                ),
              ),
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
    );
  }
}
