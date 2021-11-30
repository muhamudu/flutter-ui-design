import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  "Total Balance",
                  style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text("500,000 Frw",
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 15.0, left: 16.0, right: 16.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Recent Transaction",
                      style: TextStyle(
                          color: Colors.orange.shade600,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                    child: ListView(
                  children: [
                    listTile(Icons.book_online, Colors.teal.shade900,
                        "Deposted", "Deposit from MoMo Pay", 50000),
                    listTile(Icons.book_online, Colors.teal.shade900, "Payout",
                        "Booked Laundry Service", 3000),
                    listTile(Icons.book_online, Colors.teal.shade900, "Paid",
                        "You paid shoe care service", 50000),
                    listTile(Icons.book_online, Colors.teal.shade900,
                        "Deposted", "Deposit from MoMo Pay", 50000),
                    listTile(Icons.book_online, Colors.teal.shade900, "Payout",
                        "Booked Laundry Service", 3000),
                    listTile(Icons.book_online, Colors.teal.shade900, "Paid",
                        "You paid shoe care service", 50000),
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
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.green.shade200,
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
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  title,
                  style:
                      TextStyle(color: Colors.orange.shade900, fontSize: 13.0),
                )
              ],
            ),
          ),
          Text("$value",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold))
        ],
      ),
    ),
  );
}
