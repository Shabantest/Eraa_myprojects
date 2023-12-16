
import 'package:flutter/material.dart';
class UserWidget extends StatelessWidget {
  UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: Image.asset('assets/images/user1.png').image,
        ),
        SizedBox(
          height: 10,
        ),
        const Text(
          'Kids',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
