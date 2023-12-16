import 'package:flutter/material.dart';

class NoneAddress extends StatelessWidget {
  const NoneAddress({super.key});

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
          'Address',
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
        padding: const EdgeInsets.all(40),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
              ),
              Image.asset('assets/images/location.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Add your address',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                'Unfortunately we don\'t know where to deliver your items to you',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 170,),
              Container(
                height: 60,
                width: 325,
                decoration: BoxDecoration(
                  color:Color.fromRGBO(40, 51, 63, 1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width:1, color: Color.fromRGBO(123, 97, 255, 1,), ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.all(10),
                  child: TextButton(
                    onPressed: () {

                    },
                    child: Text(
                      "Add Address",
                      style: TextStyle(
                          color: Color.fromRGBO(123, 97, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
