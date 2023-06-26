import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paps/mainpage/home_page/botomshet.dart';
import 'package:paps/mainpage/home_page/drawer.dart';
import 'package:paps/mainpage/home_page/foodtile.dart';
import 'package:paps/models/model.dart';
import 'package:paps/models/modeltwo.dart';
import 'package:paps/models/provider.dart';
import 'package:paps/models/providertwo.dart';
import 'package:paps/screens/cart/cart.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  final user = FirebaseAuth.instance.signOut();
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //final selectedindex = 0;
  dynamic addItem(Botom foodlist) {
    Provider.of<Botlis>(context, listen: false).addCart(foodlist);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<Cart, Botlis>(
      builder: (context, value, value2, child) => Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Builder(builder: (context) {
                return GestureDetector(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      'lib/asset/menu.png',
                    ));
              }),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyCart(),
                    ),
                  ),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                    size: 33,
                  ),
                ),
              ),
            ]),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(),
                    Positioned(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30, right: 80),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade600)),
                              // filled: true,
                              // fillColor: Colors.white60,
                              //  iconColor: Colors.white60,
                              // prefixIconColor: Colors.grey.shade400,

                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey.shade400,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 321,
                      top: 30,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                offset: Offset(2, 2), //position of the shadow
                                blurRadius: 6, //thickness of the shadow
                                blurStyle: BlurStyle.outer,
                              ),
                            ]),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                        child: Image.asset(
                          'lib/asset/funnel.png',
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 40,
                        mainAxisSpacing: 30,
                      ),
                      itemBuilder: (context, index) {
                        Food dfood = value.getfoodItems()[index];
                        List<Botom> foodlist = value2.bottomList()[
                            index]; //foodlist represents dem breakfastlist and co in the function
                        return FoodTile(
                          food: dfood,
                          onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                    margin: EdgeInsets.all(10),
                                    child: ListView.builder(
                                        itemCount: foodlist.length,
                                        itemBuilder: (context, index) {
                                          return BuildSheet(
                                            botom: foodlist[index],
                                            onTap: addItem(foodlist[index]),
                                          );
                                        }),
                                  )),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
