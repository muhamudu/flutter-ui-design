import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/size_config.dart';
import 'package:grouped_list/grouped_list.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 150,
                    width: 250,
                    color: Colors.grey.shade200,
                    child: Card(
                      elevation: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("assets/images/pngegg (13).png"),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("T-Shirt Cleaning")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
