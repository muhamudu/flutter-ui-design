import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/help_center/components/help_form.dart';
import 'package:shop_app/components/socal_card.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(height: getProportionateScreenHeight(10)),
          HomeHeader(),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                // CircleAvatar(
                //   backgroundImage:
                //       AssetImage("assets/images/Profile Image.png"),
                // ),
                // Text(
                //   "Wallet App",
                //   style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 22.0,
                //       fontWeight: FontWeight.w600),
                // ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "Total Balance",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text("500,000 Frw",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          // FloatingActionButton(
          //   onPressed: () {},
          //   child: Icon(Icons.add),
          //   backgroundColor: Colors.teal.shade200,
          // ),
          SizedBox(height: 10.0),
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 15.0, left: 16.0, right: 16.0),
            decoration: BoxDecoration(
                color: Colors.teal.shade400,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Recent Transaction",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 25.0,
                ),
                Expanded(
                    child: ListView(
                  children: [
                    listTile(Icons.book_online, Colors.teal.shade800,
                        "Deposted", "Deposit from MoMo Pay", 50000),
                    listTile(Icons.book_online, Colors.teal.shade800,
                        "Deposted", "Deposit from MoMo Pay", 50000),
                    listTile(Icons.book_online, Colors.teal.shade800,
                        "Deposted", "Deposit from MoMo Pay", 50000),
                    listTile(Icons.book_online, Colors.teal.shade800,
                        "Deposted", "Deposit from MoMo Pay", 50000),
                    listTile(Icons.book_online, Colors.teal.shade800,
                        "Deposted", "Deposit from MoMo Pay", 50000),
                  ],
                ))
              ],
            ),
          )),
        ],
      )),
    );
  }
}

Widget listTile(
    IconData icon, Color color, String type, String title, double value) {
  return InkWell(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          color: Colors.teal.shade700,
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.circular(8.0)),
              child: Icon(icon, size: 39.0, color: color)),
          SizedBox(
            width: 1.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(type,
                    style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 13.0),
                )
              ],
            ),
          ),
          Text("$value",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold))
        ],
      ),
    ),
  );
}
