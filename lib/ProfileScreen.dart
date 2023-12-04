import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
            Icons.arrow_back,
          color: Colors.white,
          size: 20,
        ),
        actions: [
          Icon(
            Icons.sunny,
            color: Colors.white,
            size: 20,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Expanded(
          child: Column(

                  children: [
                    Center(
                      child: CircleAvatar(

                        backgroundImage: Image.asset('assets/images/IMG_٢٠٢١٠٦٠٧_١٤٠٦٣٩.jpg',
                          fit: BoxFit.cover,
                            ).image,
                          radius: 70,
                      ),
                    ),
                   SizedBox(height: 15,),
                   Text(" Shaban Ramadan",
                     style: TextStyle(
                       fontSize: 23,
                       color: Colors.white,
                     ),
                   ),
                    SizedBox(height: 10,),
                    Text("shabanramdan@gmai.com",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                        ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadiusDirectional.circular(25),
                      ),
                      clipBehavior: Clip.none,
                      padding: EdgeInsetsDirectional.all(10),
                      margin:  EdgeInsets.only(left: 70,right: 70,top: 20),
                      height: 50,
                      width: double.infinity,
                      child: Text("Upgrade to PRO",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,

                        ),
                        textAlign: TextAlign.center,
                          ),
                    ),
                    SizedBox(height: 20,),
                    Expanded(
                      child: ListView.separated(itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsetsDirectional.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadiusDirectional.circular(25),

                          ),
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 50,
                              ),
                              Expanded(
                                flex: 2,
                                child: Text("Privacy",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 30,
                                  color: Colors.white,

                                ),
                              ),
                            ],
                          ),
                        );
                      }, separatorBuilder: (context, index) {
                        return Spacer();
                      }, itemCount: 5),
                    )
                  ],
          ),
        ),
      ),
    );
  }
}
