import 'package:flutter/material.dart';
import 'package:shop_app/screens/sub_service_list/sub_service_list.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SubServiceList.routeName);
          },
          child: Text(
            "See More",
            style: TextStyle(
              color: Color(0xFFBBBBBB),
            ),
          ),
        ),
      ],
    );
  }
}
