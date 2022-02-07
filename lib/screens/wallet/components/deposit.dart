// import 'package:flutter/material.dart';
// import 'package:shop_app/components/custom_surfix_icon.dart';
// import 'package:shop_app/components/default_button.dart';
// import 'package:shop_app/components/form_error.dart';
// import 'package:shop_app/screens/otp/otp_screen.dart';

// import '../../../constants.dart';
// import '../../../size_config.dart';

// class DepositeForm extends StatelessWidget {
//   static String routeName = "/deposit";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       children: [
//         Column(
//           children: [
//             AppBar(
//               title: Text(
//                 "Make Deposit",
//                 style: TextStyle(color: Colors.green.shade900),
//               ),
//             ),

//           ],
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:shop_app/components/custom_surfix_icon.dart';

// class DepositeForm extends StatelessWidget {
//   static String routeName = "/deposit";
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       appBar: AppBar(
//         title: Text(
//           "Make Deposit",
//           style: TextStyle(color: Colors.green.shade900),
//         ),
//       ),
//       // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       // child: TextFormField(
//       //   keyboardType: TextInputType.phone,
//       //   decoration: InputDecoration(
//       //     labelText: "Phone Number",
//       //     hintText: "Enter your phone number",
//       //     floatingLabelBehavior: FloatingLabelBehavior.always,
//       //     suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
//       //   ),
//       // ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';

import '../../../constants.dart';

class DepositeForm extends StatelessWidget {
  static String routeName = "/deposit";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make Deposit",
            style: TextStyle(color: Colors.green.shade900)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
            child: Column(
          children: [
            Text("Make Topup", style: headingStyle),
            Text(
              "Make topup using your MoMo \nPhone Number",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter your MoMo number",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon:
                    CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
              ),
            ),
            SizedBox(height: 30.0),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Amount",
                hintText: "Frw",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.money),
              ),
            ),
            SizedBox(height: 30.0),
            DefaultButton(
              text: "TopUp",
              press: () {},
            ),
          ],
        )),
      ),
    );
  }
}
