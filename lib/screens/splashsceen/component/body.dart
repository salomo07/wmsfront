import 'package:flutter/material.dart';
import 'package:wmsfront/constants.dart';
import 'package:wmsfront/screens/splashsceen/splashscreen.dart';
import 'package:wmsfront/size_config.dart';

class Body extends StatefulWidget{
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();

}
class _BodyState extends State<Body>{
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "header":"SMW",
      "text": "Smarty...",
      "image": "assets/images/splash_1.png"
    },
    {
      "header":"SMW",
      "text": "Make your life easier...",
      "image": "assets/images/splash_2.png"
    },
    {
      "header":"SMW",
      "text": "Efficient",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    String t,i;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                      currentPage=value;
                    });
                  },
                  itemCount: 3,
                  itemBuilder:(context,index)=>
                      SplashContent(
                          header:splashData[index]['header'].toString(),
                          text:splashData[index]['text'].toString(),
                          image:splashData[index]['image'].toString(),
                      )
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index :index),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: getProportionateScreenHeight(15)),
                      child: SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(56),
                        child: TextButton(
                            onPressed:(){
                              Navigator.popAndPushNamed(context, SplashScreen.routeName);
                            },
                            child:Text("Continue",style:
                            TextStyle(fontSize: getProportionateScreenWidth(18),color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: wPrimaryColor,
                            ),
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index=0}) {
    return AnimatedContainer(
        duration: wAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage==index?20:6,
        decoration: BoxDecoration(
          color: currentPage==index? wPrimaryColor:Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)
        ),
      );
  }
  
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.header,required this.text, required this.image,
  });
  final String text,image,header;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(header, style: TextStyle(
          fontSize: getProportionateScreenWidth(26),
          color: wPrimaryColor,
          fontWeight: FontWeight.bold
        )),
        Text(text,textAlign: TextAlign.center,),
        Spacer(flex: 2,),
        Image.asset(image.toString(),
          height: getProportionateScreenHeight(235),
          width: getProportionateScreenWidth(235),
        ),
        Spacer()
      ],
    );
  }
}