import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final String img;
  final Color kalar;
  const MyButton(
      {super.key, required this.label, required this.img, required this.kalar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: kalar),
        padding: EdgeInsets.symmetric(horizontal: 71, vertical: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              height: 23,
              // width: 23,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
