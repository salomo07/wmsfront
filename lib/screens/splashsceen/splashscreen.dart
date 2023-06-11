import 'package:flutter/material.dart';
import 'package:wmsfront/constants.dart';
import 'package:wmsfront/screens/splashsceen/component/body.dart';
import 'package:wmsfront/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName='/splashscreen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}