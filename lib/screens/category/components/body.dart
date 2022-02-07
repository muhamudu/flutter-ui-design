import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/discount_banner.dart';
import 'package:shop_app/screens/home/components/home_header.dart';

import '../../../size_config.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Body extends StatelessWidget {
  Future<List<Category>> _getCategories() async {
    var data =
        await http.get(Uri.parse("https://api.bits.rw/backend/category.json"));

    var jsonData = json.decode(data.body);
    List<Category> categories = [];
    for (var c in jsonData) {
      Category category = Category(c["admin_id"], c["category_name"]);
      categories.add(category);
    }
    print(categories.length);
    return categories;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(10)),
            // Row(
            //   children: <Widget>[
            //     ClipRRect(
            //       borderRadius: BorderRadius.all(Radius.circular(15)),
            //       child: Container(
            //         height: 200,
            //         width: 250,
            //         color: Colors.grey.shade200,
            //         child: Card(
            //           elevation: 6,
            //         ),
            //       ),
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 100,
            // )
            FutureBuilder(
              future: _getCategories(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                print(snapshot.data);
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: Text("Loading..."),
                    ),
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data[index].category_name),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  // final int id;
  final String admin_id;
  final String category_name;

  Category(this.admin_id, this.category_name);
}
