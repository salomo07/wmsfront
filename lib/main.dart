import 'package:flutter/material.dart';
import 'package:wmsfront/constants.dart';
import 'package:wmsfront/routes.dart';
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
      title: 'Flutter Demox',
      initialRoute: SplashScreen.routeName,
      routes: routes,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white,
        fontFamily:"Muli",
        textTheme:TextTheme(
          bodyText1:TextStyle(color:wTextColor),
          bodyText2:TextStyle(color:wTextColor),
        ),
        visualDensity:VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
//cd E:\Developer\Application\Sdk\emulator
//emulator @Pixel_4_API_33




  

