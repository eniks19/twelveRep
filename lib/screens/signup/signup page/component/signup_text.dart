import 'package:flutter/material.dart';
import 'package:paps/screens/signup/signup%20page/signin_page/sign_in.dart';

class SignText extends StatelessWidget {
  const SignText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignInPage(),
        ),
      ),
      child: Text(
        'Sign Up',
        style: TextStyle(
          color: Color(0xffEFAE07),
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
