import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(47, 60, 80, 1),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 20,
              color: Colors.white,
            )),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w400),
              ))
        ],
        backgroundColor: Color.fromARGB(47, 60, 80, 1),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: double.infinity,
                child: Image.asset('assets/images/run.png')),
            Container(
              width: 311,
              height: 303,
              decoration: BoxDecoration(
                color: Color.fromARGB(47, 60, 80, 1),
                borderRadius: BorderRadius.circular(64),
                border:
                Border.all(width: 1, color: Color.fromRGBO(83, 94, 110, 1)),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Run",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem "
                            "Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 4,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 4,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 4,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 4,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: () {

                        },
                        child: Container(
                          margin: EdgeInsetsDirectional.only(
                              start: 50, end: 50),
                          height: 56,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(123, 97, 255, 1),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Next', style: TextStyle(
                                  color: Colors.white, fontSize: 20),),
                              Icon(Icons.arrow_forward, size: 25,
                                color: Colors.white,),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an accoun?", style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),),
                TextButton(onPressed: () {

                }, child: Text("Sign In",style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.w400),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
