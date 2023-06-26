import 'package:flutter/material.dart';

class EndSignText extends StatelessWidget {
  const EndSignText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: RichText(
        text: TextSpan(
            style: TextStyle(
                color: Color(0xff333333),
                fontWeight: FontWeight.w400,
                fontSize: 15),
            children: <TextSpan>[
              TextSpan(
                text: 'By continuing, you automatically accept the ',
              ),
              TextSpan(
                text:
                    'Terms \n    of Service, Privacy Policy and Cookies policy.',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ]),
      ),
    );
  }
}
