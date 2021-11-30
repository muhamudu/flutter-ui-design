import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // SizedBox(height: getProportionateScreenWidth(10)),
            ListTile(
              leading: Text("Notification",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              trailing: CircleAvatar(
                backgroundColor: kSecondaryColor.withOpacity(0.1),
                child: Icon(Icons.search, color: Colors.grey),
              ),
            ),
            Divider(),
            SizedBox(height: getProportionateScreenHeight(5)),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Text("Earlier",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ))
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.png"),
                backgroundColor: Colors.white,
              ),
              title: Text(
                  "Hello dear Customer, Your Laundry service will be done in 1 Hour!"),
            ),
            Divider(),
            SizedBox(height: getProportionateScreenHeight(15)),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.png"),
                backgroundColor: Colors.white,
              ),
              title: Text("Your order was confirmed, soon we'll reah on you"),
            ),
            Divider(),
            SizedBox(height: getProportionateScreenHeight(15)),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.png"),
                backgroundColor: Colors.white,
              ),
              title: Text(
                  "Thank for booking laundry! Your Booking is in progress."),
            ),
          ],
        ),
      ),
    );
  }
}
