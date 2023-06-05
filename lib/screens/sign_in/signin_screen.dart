import 'package:flutter/material.dart';
import 'package:wmsfront/constants.dart';
import 'package:wmsfront/screens/sign_in/component/body.dart';
import 'package:wmsfront/size_config.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName='/sign_in';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}