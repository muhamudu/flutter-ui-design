import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import 'package:folding_cell/folding_cell.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      // Padding(
      //   padding: EdgeInsets.all(16),
      //   child: Container(
      //       child: FittedBox(
      //     child: Material(
      //       color: Colors.white,
      //       elevation: 14.0,
      //       borderRadius: BorderRadius.circular(24.0),
      //       shadowColor: Color(0x802196F3),
      //       child: Row(
      //         children: <Widget>[
      //           Container(
      //             child: Padding(
      //               padding: const EdgeInsets.all(16.0),
      //               child: Center(
      //                 child: Text(
      //                   "T-Shirt\n Price: 3000 Frw",
      //                   style: TextStyle(color: Color(0xFFBBBBBB), fontSize: 2),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Container(
      //             width: 100,
      //             height: 100,
      //             child: ClipRRect(
      //               borderRadius: new BorderRadius.circular(24.0),
      //               child: Image(
      //                 fit: BoxFit.contain,
      //                 alignment: Alignment.topRight,
      //                 image: AssetImage("assets/images/pngegg (13).png"),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   )),
      // ),
      // Padding(
      //   padding: EdgeInsets.all(16),
      //   child: Container(
      //       child: FittedBox(
      //     child: Material(
      //       color: Colors.white,
      //       elevation: 14.0,
      //       borderRadius: BorderRadius.circular(24.0),
      //       shadowColor: Color(0x802196F3),
      //       child: Row(
      //         children: <Widget>[
      //           Container(
      //             child: Padding(
      //               padding: const EdgeInsets.all(16.0),
      //               child: Center(
      //                 child: Text(
      //                   "Shirt & Fording\n Price: 3000 Frw",
      //                   style:
      //                       TextStyle(color: Color(0xFFBBBBBB), fontSize: 20),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Container(
      //             width: 100,
      //             height: 100,
      //             child: ClipRRect(
      //               borderRadius: new BorderRadius.circular(24.0),
      //               child: Image(
      //                 fit: BoxFit.contain,
      //                 alignment: Alignment.topRight,
      //                 image: AssetImage("assets/images/pngegg (14).png"),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   )),
      // ),
      // Padding(
      //   padding: EdgeInsets.all(16),
      //   child: Container(
      //       child: FittedBox(
      //     child: Material(
      //       color: Colors.white,
      //       elevation: 14.0,
      //       borderRadius: BorderRadius.circular(24.0),
      //       shadowColor: Color(0x802196F3),
      //       child: Row(
      //         children: <Widget>[
      //           Container(
      //             child: Padding(
      //               padding: const EdgeInsets.all(16.0),
      //               child: Center(
      //                 child: Text(
      //                   "Sneaker Wash\n Price: 2500 Frw",
      //                   style:
      //                       TextStyle(color: Color(0xFFBBBBBB), fontSize: 20),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Container(
      //             width: 100,
      //             height: 100,
      //             child: ClipRRect(
      //               borderRadius: new BorderRadius.circular(24.0),
      //               child: Image(
      //                 fit: BoxFit.contain,
      //                 alignment: Alignment.topRight,
      //                 image: AssetImage("assets/images/pngegg (19).png"),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   )),
      // ),
      // SizedBox(height: getProportionateScreenWidth(20)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              mainProducts.length,
              (index) {
                if (mainProducts[index].isPopular)
                  return ProductCard(product: mainProducts[index]);

                return SizedBox
                    .shrink(); // here by default width and height is 0
              },
            ),
            SizedBox(width: getProportionateScreenWidth(20)),
          ],
        ),
      )
    ]);
  }
}
