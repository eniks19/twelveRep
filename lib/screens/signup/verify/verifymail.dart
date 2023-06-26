import 'package:flutter/material.dart';
import 'package:paps/screens/signup/signup%20page/component/arrow.dart';
import 'package:flutter/services.dart';
import 'package:paps/screens/signup/signup%20page/signin_page/components/buton.dart';
import 'package:paps/screens/signup/verify/component/arrow4.dart';
import 'package:paps/screens/signup/verify/component/buton3.dart';
import 'package:paps/screens/signup/verify/component/formfield.dart';
import 'package:paps/screens/signup/verify/component/richtextmail1.dart';
import 'package:paps/screens/signup/verify/component/richtextmail2.dart';

class MyVerify extends StatefulWidget {
  const MyVerify({super.key});

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow4(),
              SizedBox(
                height: 15,
              ),
              Text(
                'Please verify your\nemail address',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We’ve sent an email to you.\nPlease enter the code.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                'Enter code',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Form(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyForm(),
                  MyForm(),
                  MyForm(),
                  MyForm(),
                ],
              )),
              SizedBox(
                height: 100,
              ),
              Buton3(),
              SizedBox(
                height: 35,
              ),
              MyRicText1(),
              SizedBox(
                height: 5,
              ),
              MyRicText2(),
            ],
          ),
        ),
      ),
    );
  }
}
