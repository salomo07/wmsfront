import 'package:flutter/material.dart';
import 'package:wmsfront/routes.dart';
import 'package:wmsfront/screens/login/loginscreen.dart';
import 'package:wmsfront/theme.dart';
import 'package:wmsfront/screens/splashsceen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      initialRoute: LoginScreen.routeName,
      routes: routes,
      theme: theme(),
      home: const SplashScreen(),
    );
  }
}

//cd E:\Developer\Application\Sdk\emulator
//emulator @Pixel_4_API_33




  

