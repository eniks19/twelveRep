import 'package:flutter/material.dart';
import 'package:paps/screens/signup/signup%20page/signin_page/components/arrow2.dart';
import 'package:paps/screens/signup/signup%20page/signin_page/components/buton.dart';
import 'package:paps/screens/signup/signup%20page/signin_page/components/text.dart';
import 'package:paps/screens/signup/signup%20page/signin_page/components/textfield.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

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
              BackArrow(),
              SizedBox(
                height: 35,
              ),
              WelText(),
              SizedBox(
                height: 75,
              ),
              MyTextField(
                controller: nameController,
                hintText: 'First name*',
                obscureText: false,
              ),
              SizedBox(
                height: 24,
              ),
              MyTextField(
                  controller: emailController,
                  hintText: 'Email address*',
                  obscureText: false),
              SizedBox(
                height: 24,
              ),
              MyTextField(
                  controller: phoneController,
                  hintText: 'Phone number*',
                  obscureText: false),
              SizedBox(
                height: 24,
              ),
              MyTextField(
                  controller: passwordController,
                  hintText: 'Password*',
                  obscureText: true),
              SizedBox(
                height: 105,
              ),
              MyButon(),
            ],
          ),
        ),
      ),
    );
  }
}
