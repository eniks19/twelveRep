import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelText extends StatelessWidget {
  const WelText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Welcome!',
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Create your profile',
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
