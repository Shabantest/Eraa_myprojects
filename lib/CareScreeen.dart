import 'package:flutter/material.dart';
class CareScreen extends StatefulWidget {
  const CareScreen({super.key});

  @override
  State<CareScreen> createState() => _CareScreenState();
}

class _CareScreenState extends State<CareScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,
        color: Colors.black,
          size: 25,
        ),
        title: Text("Back",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold ,
          color: Colors.black,
        ),
        ),
      ),
      body:
      Column(
          children: [
            SizedBox(height: 20,),
            Text("Avaiable cars for rid",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25,
              ),
              ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
                return  Container(
                  padding: EdgeInsetsDirectional.all(10),
                  margin: EdgeInsets.only(left: 15,right: 15),
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadiusDirectional.circular(15),
                      border:Border.all(color: Colors.green,width: 3,style: BorderStyle.solid)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 5,),
                              Text("BMW  Cabrio",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 10,),
                              Text("Automatic | 3 seats | octane",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 10,),

                            ],
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Image.asset('assets/images/img_6.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                            size: 20,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10,),
                          Text("800m (5 mins away)",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            )
                            ,),

                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            height: 40,
                            width: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.green,width: 2),
                            ),
                            child: Text("Book Later ",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.all(7),
                            height: 40,
                            width: 125,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.green,width: 2),
                            ),
                            child: Text("Book Later ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ) ;
              }, separatorBuilder: (context, index) {
                return SizedBox(height: 10,);
              }, itemCount: 15),
            )
          ],
        ),

     

    );
  }
}


