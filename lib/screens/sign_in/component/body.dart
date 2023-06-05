import 'package:flutter/material.dart';
import 'package:wmsfront/constants.dart';
import 'package:wmsfront/size_config.dart';

class Body extends StatefulWidget{
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();

}
class _BodyState extends State<Body>{
  int currentPage = 0;
  List<Map<String?, String?>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
      "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(itemBuilder:(context,index)=>
                      SplashContent(
                          title:splashData[index]["text"]="WMS",
                          image:splashData[index]["image"]="assets/images/splash_1.png",
                      )
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
  
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.title, required this.image,
  });
  final String title,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(this.title, style: TextStyle(
          fontSize: getProportionateScreenWidth(26),
          color: wPrimaryColor,
          fontWeight: FontWeight.bold
        )),
        Text("Hidup ini penuh omong kosong"),
        Spacer(flex: 2,),
        Image.asset(this.image,
          height: getProportionateScreenHeight(235),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}