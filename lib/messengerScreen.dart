import 'package:flutter/material.dart';
class MessngerScreen extends StatefulWidget {
  const MessngerScreen({super.key});

  @override
  State<MessngerScreen> createState() => _MessngerScreenState();
}

class _MessngerScreenState extends State<MessngerScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: CircleAvatar(
          backgroundImage: Image.asset('assets/images/IMG_٢٠٢١٠٦٠٧_١٤٠٦٣٩.jpg').image,
          radius: 10,
        ),
        title: Text("Chats",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
        ),
actions: [
CircleAvatar(
   backgroundColor: Colors.blueAccent,
  radius: 20,
  child: Icon(Icons.camera_alt,
  color: Colors.white,
    size: 25,
  ),
),
  SizedBox(width: 20,),

      CircleAvatar(
        backgroundColor: Colors.blueAccent,
        radius: 20,
        child: Icon(Icons.pending_rounded,
        color: Colors.white,
        size: 25,
        ),
      ),
],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
                height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadiusDirectional.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search,
                  size: 20,
                    color: Colors.white38,
                  ),
                  Text("Search",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white38,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 100,
              child: Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                  return   Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset('assets/images/IMG_٢٠٢١٠٦٠٧_١٤٠٦٣٩.jpg').image,
                        radius: 30,
                      ),
                      Text("Shaban",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  );
                }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: 30),
              ),
            ),

            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.asset('assets/images/IMG_٢٠٢١٠٦٠٧_١٤٠٦٣٩.jpg').image,
                      radius: 30,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Shaban Ramadan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ) ,
                        SizedBox(height: 10,),
                        Text("Welcome To Flutter ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.end,
                        )

                      ],
                    ),
                    SizedBox(width: 125,),
                    Text("11:37 PM",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ) ;
              }, separatorBuilder: (context, index) {
                return SizedBox(height: 10,);
              }, itemCount: 30),
            )
          ],
        ),
      ),

    );
  }
}
