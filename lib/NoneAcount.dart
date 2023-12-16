import 'package:flutter/material.dart';

class NoneAcount extends StatelessWidget {
  const NoneAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(40, 51, 63, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 51, 63, 1),
        leading: Container(
          margin: EdgeInsetsDirectional.all(15),
          padding: EdgeInsetsDirectional.all(5),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color:  Color.fromRGBO(40, 51, 63, 1),
            border: Border.all(width: 1,color: Colors.grey),
            borderRadius: BorderRadius.circular(7)
          ),
          child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,),
        ),
        title: Text('New Wallet',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),),
        actions:[
          Icon(Icons.credit_card,color: Colors.white,size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.add_card,color: Colors.white,size: 30,),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Select the ',style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),),
            Text('withdrawal type',style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),),
            SizedBox(height: 30,),
            // width: 343px
            // height: 128px
            // top: 304px
            // left: 16px
            // border-radius: 24px
            // border: 1px
            Container(
              padding: EdgeInsetsDirectional.all(10),
              height: 128,
              width: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(width: 1,color: Color.fromRGBO(255, 255, 255, 0.09),),
                color: Color.fromRGBO(47, 60, 80, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  CircleAvatar(
                    backgroundColor:Color.fromRGBO(123, 97, 255, 1),
                    radius: 40,
                    child:Icon(Icons.home_work_outlined,color: Colors.white,size: 40,) ,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const  [
                      Text('Bank Account',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),),
                      Text('Unfortunately we don\'t know',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),),
                      Text('where to send your money',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                ],
              ),
            ),
          SizedBox(height: 20,),
            Container(
              padding: EdgeInsetsDirectional.all(10),
              height: 128,
              width: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(width: 1,color: Color.fromRGBO(255, 255, 255, 0.09),),
                color: Color.fromRGBO(47, 60, 80, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor:Color.fromRGBO(241, 73, 133, 1),
                    radius: 40,
                    child:Icon(Icons.credit_card,color: Colors.white,size: 40,) ,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text('Card',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),),
                      Text('Unfortunately we don\'t know',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),),
                      Text('where to send your money',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
