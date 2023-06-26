import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paps/screens/signup/signup%20page/sign_up.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // the stack widget stacks things inside the children on top of eachother
        children: [
          Container(), // hence this was very crucial
          Image.asset('lib/asset/spag.png'),
          Positioned(
            top: 63,
            right: 21,
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 24, left: 25),
              child: Text(
                'Skip',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xff000000)),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
            top: 50,
            left: 19,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.67),
                  child: Container(
                    child: Image.asset('lib/asset/chew.png'),
                    height: 69.35,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Eat',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 33.29,
                      ),
                    ),
                    Text(
                      'Bits',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 33.29,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 10,
                top: 25,
                bottom: 31,
                right: 10,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              height: 325,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Munch it with Eat Bits',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome to a world of pleasure and excitement\n Where we major in pastries, pasta and seafood.\n  Every single one of you cravings are satisfied\n                           here at Eat Bits.',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  // Text(
                  //   '\nmassa',
                  //   style: TextStyle(
                  //     color: Color(0xff000000),
                  //     fontWeight: FontWeight.w400,
                  //     fontSize: 18,
                  //   ),
                  // ),
                  SizedBox(
                    height: 41,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEFAE07),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.only(
                          left: 128, right: 127, top: 14, bottom: 14),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
