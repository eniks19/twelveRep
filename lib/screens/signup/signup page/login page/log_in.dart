import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paps/screens/signup/signup%20page/login%20page/components/arrow3.dart';
import 'package:paps/screens/signup/signup%20page/login%20page/components/boton2.dart';
import 'package:paps/screens/signup/signup%20page/signin_page/components/textfield.dart';
import 'package:paps/screens/signup/verify/verifymail.dart';

class MyLogIn extends StatefulWidget {
  const MyLogIn({super.key});

  @override
  State<MyLogIn> createState() => _MyLogInState();
}

class _MyLogInState extends State<MyLogIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void logUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);

    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Arrow3(),
              SizedBox(
                height: 93,
              ),
              Text(
                'Log in',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w700,
                  fontSize: 42,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: emailController,
                  hintText: 'Email address',
                  obscureText: false),
              SizedBox(
                height: 44,
              ),
              MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true),
              SizedBox(
                height: 33,
              ),
              Text(
                'Forgot your passsword',
                style: TextStyle(
                  color: Color(0xffEFAE07),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 165,
              ),
              Buton2(onTap: logUserIn),
            ],
          ),
        ),
      ),
    );
  }
}
