import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';

import '../../enums.dart';
import 'components/body.dart';

class SubServiceList extends StatelessWidget {
  static String routeName = "/sub_service_list";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.category),
    );
  }
}
