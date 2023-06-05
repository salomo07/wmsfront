import 'package:flutter/material.dart';
import 'package:wmsfront/size_config.dart';

const wPrimaryColor = Color(0xFFFF7643);
const wPrimaryLightColor = Color(0xFFFFECDF);
const wPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const wSecondaryColor = Color(0xFF979797);
const wTextColor = Color(0xFF757575);

const wAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String wEmailNullError = "Please Enter your email";
const String wInvalidEmailError = "Please Enter Valid Email";
const String wPassNullError = "Please Enter your password";
const String wShortPassError = "Password is too short";
const String wMatchPassError = "Passwords don't match";
const String wNamelNullError = "Please Enter your name";
const String wPhoneNumberNullError = "Please Enter your phone number";
const String wAddressNullError = "Please Enter your address";

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
    borderSide: BorderSide(color: wTextColor),
  );
}
