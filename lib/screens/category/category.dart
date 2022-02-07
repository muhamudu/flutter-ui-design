import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/json/product.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/size_config.dart';
import '../../constants.dart';
import 'components/body.dart';

class Category extends StatelessWidget {
  static String routeName = "/servicescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.category),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        SizedBox(height: getProportionateScreenHeight(20)),
        HomeHeader(),
        Column(
            children: List.generate(cartList.length, (index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(cartList[index]['img']),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartList[index]['name'],
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "ref " + cartList[index]['ref'],
                          style: TextStyle(
                              fontSize: 13, color: black.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          cartList[index]['size'],
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: black.withOpacity(0.5))),
                              child: Center(
                                child: Icon(
                                  Icons.minimize,
                                  size: 10,
                                  color: black.withOpacity(0.5),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: black.withOpacity(0.5))),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 10,
                                  color: black.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(cartList[index]['price'],
                                style: TextStyle(
                                  fontSize: 19,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        })),
        Divider(
            // color: grey.withOpacity(0.8),
            ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: grey.withOpacity(0.8),
        ),
      ],
    );
  }
}
