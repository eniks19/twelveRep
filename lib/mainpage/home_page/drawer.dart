import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEFAE07),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50))),
              height: 150,
              child: DrawerHeader(
                child: Center(
                  child: Text(
                    'Eat Bits',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 48,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Reward',
            ),
          ],
        ),
      ),
    );
  }
}
