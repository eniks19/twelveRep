import 'package:flutter/material.dart';
import 'package:paps/screens/signup/verify/verifymail.dart';

class MyButon extends StatelessWidget {
  const MyButon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyVerify(),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffEFAE07),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(left: 100, right: 100, top: 24, bottom: 24),
          child: Text(
            'Create Account',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
