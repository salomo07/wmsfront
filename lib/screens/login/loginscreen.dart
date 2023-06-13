import 'package:flutter/material.dart';
import 'package:wmsfront/theme.dart';
import 'package:wmsfront/screens/login/component/body.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  static String routeName="/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }

}