import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:paps/screens/signup/signup%20page/login%20page/log_in.dart';
import 'package:paps/screens/signup/verify/verifymail.dart';

class SecSignText extends StatelessWidget {
  const SecSignText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyLogIn(),
        ),
      ),
      child: RichText(
        text: TextSpan(
            style: TextStyle(
                color: Color(0xff333333),
                fontWeight: FontWeight.w400,
                fontSize: 15),
            children: <TextSpan>[
              TextSpan(
                text: 'Have an account already?',
              ),
              TextSpan(
                text: ' Log in',
                style: TextStyle(
                    color: Color(0xffEFAE07),
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ]),
      ),
    );
  }
}
