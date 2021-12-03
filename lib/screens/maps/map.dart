import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/screens/maps/components/body.dart';

import '../../enums.dart';

class MapScreen extends StatelessWidget {
  static String routeName = "/map";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapSample(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.map),
    );
  }
}
