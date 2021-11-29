import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';

import '../../enums.dart';
import 'components/body.dart';

class Wallet extends StatelessWidget {
  static String routeName = "/wallet";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.category),
    );
  }
}
