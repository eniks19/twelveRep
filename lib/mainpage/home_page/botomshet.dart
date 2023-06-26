import 'package:flutter/material.dart';
import 'package:paps/models/modeltwo.dart';

class BuildSheet extends StatelessWidget {
  Botom botom;
  void Function()? onTap;
  BuildSheet({super.key, required this.botom, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffEFAE07)))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      botom.imag,
                      // height: 100,
                      fit: BoxFit.cover,
                      // width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      botom.label,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '\$' + botom.price,
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: onTap,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black38,
                size: 33,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
