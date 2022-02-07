import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'dart:ui';

const kPrimaryColor = Color(0xFFFB8C00);
const kPrimaryLightColor = Color(0xFFFFE0B2);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFB8C00), Color(0xFF1B5E20)],
);

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

const Color primary = Color(0xff000000);
const Color medium = Color(0xff515151);
const Color secondary = Color(0xffffffff);
const Color accent = Color(0xFFEA9F5A);

const Color success = Color(0xff44c93a);
const Color danger = Color(0xffff4657);
const Color info = Color(0xff5bc0de);
const Color warning = Color(0xfffeba06);

const Color bgAppbarBlack = Color(0xff232528);
const Color bgAppbarWhite = Color(0xffffffff);

const Color bgAppbarGradientStart = Color(0xFF191C20);
const Color bgAppbarGradientEnd = Color(0xFF29313E);

const Color bgButtonBlack = Color(0xFF17181A);
const Color bgButtonBlue = Color(0xFF3B66BE);
const Color bgButtonWhite = Color(0xffffffff);

const Color black = Color(0xff000000);
const Color white = Color(0xffffffff);
const Color blue = Color(0xff0D47A1);
const Color grey = Color(0xffbdbdbd);
const Color lineWhite = Color(0xffececec);
const Color lineGrey = Color(0xffbdbdbd);
const Color lineTextGrey = Color(0xff9E9E9E);

const Color darkModeButton = Color(0xff2F3641);
const Color lightModeButton = Color(0xff000000);
const Color darkBgCircle = Color(0xff2F3641);

const kSecondaryColor = Color(0xFF1B5E20);
const kTextColor = Color(0xFF757575);

const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(25),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const String kMessageTitleNullError = "Please Enter your Message Title";
const String kMessageNullError = "Please Enter your Message";
final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
