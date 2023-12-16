import 'package:flutter/material.dart';

class VrifyYourEmail extends StatelessWidget {
  const VrifyYourEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 51, 63, 1),
        leading: Icon(
          Icons.arrow_back_outlined,
          size: 30,
          color: Colors.white,
        ),
      ),
      backgroundColor: Color.fromRGBO(40, 51, 63, 1),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/Email.png',
                  alignment: Alignment.center),
              SizedBox(
                height: 50,
              ),
              Text('Verify your email',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Enter the email associated with your account we’ll send email with password to verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(47, 60, 80, 1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(255, 255, 255, 0.17),
                      ),
                    ),
                    child:       Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(47, 60, 80, 1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(255, 255, 255, 0.17),
                      ),
                    ),
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(47, 60, 80, 1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(255, 255, 255, 0.17),
                      ),
                    ),
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(47, 60, 80, 1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(255, 255, 255, 0.17),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100,),
              // width: Fixed (325px)
              // height: Fixed (56px)
              // padding: 14px, 32px, 14px, 32px
              // border-radius: 12px
              // gap: 4px
              Container(
                width: 325,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(123, 97, 255, 1),
                ),
                child:  TextButton(
                  onPressed: () {

                  },
                  child: Text(
                      'Verify Email',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center),
                ),
              ),
                SizedBox(height: 15,),
              Container(
                width: 325,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1,   color: Color.fromRGBO(123, 97, 255, 1), )
                ),
                child:  TextButton(
                  onPressed: () {

                  },
                  child: Text(
                      'Open mail app',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
