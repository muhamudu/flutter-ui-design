import 'package:flutter/material.dart';

import 'components/body.dart';

class HelpCenter extends StatelessWidget {
  static String routeName = "/help_center";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave a message"),
      ),
      body: Body(),
    );
  }
}
