import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paps/screens/signup/signup%20page/component/arrow.dart';
import 'package:paps/screens/signup/signup%20page/component/button.dart';
import 'package:paps/screens/signup/signup%20page/component/endtext_signup.dart';
import 'package:paps/screens/signup/signup%20page/component/logo.dart';
import 'package:paps/screens/signup/signup%20page/component/sec_buton.dart';
import 'package:paps/screens/signup/signup%20page/component/sign_up_2_text.dart';
import 'package:paps/screens/signup/signup%20page/component/signup_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyArrow(),
            SizedBox(
              height: 50,
            ),
            MyLogo(),
            SizedBox(
              height: 120,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyButton(
                  label: 'Sign in with Apple',
                  img: 'lib/asset/aple.png',
                  kalar: Color(0xff000000),
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  label: 'Sign in with Facebook',
                  img: 'lib/asset/facebok.png',
                  kalar: Color(0xff337FFF),
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonTwo(),
                SizedBox(
                  height: 110,
                ),
                SignText(),
                SizedBox(
                  height: 48,
                ),
                SecSignText(),
                SizedBox(
                  height: 31,
                ),
                EndSignText(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
