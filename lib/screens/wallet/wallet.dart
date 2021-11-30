import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/screens/wallet/components/deposit.dart';

import '../../enums.dart';
import 'components/body.dart';

class Wallet extends StatelessWidget {
  static String routeName = "/wallet";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "My Wallet",
          style: TextStyle(color: Colors.green.shade900),
        ),
      )),
      body: Body(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, DepositeForm.routeName);
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xFFFB8C00),
          foregroundColor: Colors.white,
          mini: false),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.category),
    );
  }
}
