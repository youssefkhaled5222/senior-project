import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'constants.dart';
import 'package:flutter/services.dart';
import 'package:trial/pages/login_page.dart';
import 'package:trial/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xfff2f2f2),
      systemNavigationBarIconBrightness: Brightness.dark, // Set the color here
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: LiquidSwipe(
            slideIconWidget: null,
            pages: [
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Orca',
                            style: kGoldCoinGreyStyle,
                          ),
                          Text(
                            'Skip',
                            style: kGoldCoinWhiteStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/img/firstImage.png',
                        fit: BoxFit.cover,
                      ),
                      height: 350,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Fitness',
                            style: kOnlineGreyTextStyle,
                          ),
                          Text(
                            'Health Care',
                            style: kBoldTextStyle,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Dive into fitness with Orca,",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6d75f2),
                              fontSize: 20.0,
                              fontFamily: 'Product Sans',
                            ),
                          ),
                          Text(
                            //"Dive into fitness with Orca\n"
                            "where fitness meets wellness for\n"
                            "your journey to a healthier you.",
                            style: kDescriptionGreyStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                //color: Color(0xff7e57c2),
                color: Colors.orangeAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Member',
                            style: kGoldCoinWhiteStyle,
                          ),
                          Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/img/thirdImage.png',
                        fit: BoxFit.cover,
                      ),
                      height: 350,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Fitness',
                            style: kOnlineWhiteTextStyle,
                          ),
                          Text(
                            'Health Care',
                            style: kBoldTextStyle,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Orca gives you two choices:\n"
                            "Train with personal certified coaches\n"
                            "or Lead your journy with Orca.",
                            style: kDescriptionWhiteStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xFF6d75f2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Coach',
                            style: kGoldCoinWhiteStyle,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    return MyHomePage();
                                  },
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    const begin = Offset(1.0, 0.0);
                                    const end = Offset.zero;
                                    const curve = Curves.easeInOutCubic;
                                    var tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: curve));
                                    var offsetAnimation =
                                        animation.drive(tween);
                                    return SlideTransition(
                                      position: offsetAnimation,
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(milliseconds: 500),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 10),
                              child: Text(
                                'Get Strarted',
                                style: TextStyle(
                                  color: Color(0xFF6d75f2),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Product Sans',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/img/secondImage.png',
                        fit: BoxFit.cover,
                      ),
                      height: 350,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Fitness',
                            style: kOnlineWhiteTextStyle,
                          ),
                          Text(
                            'Health Care',
                            style: kBoldTextStyle,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Orca is your way to communicate\n"
                            "with your cleints. \n"
                            "Orca is your new workspace.",
                            style: kDescriptionWhiteStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
            enableLoop: false,

            fullTransitionValue: 300,
            //enableSlideIcon: pages.length > 1 ? true : false,
            waveType: WaveType.liquidReveal,
            positionSlideIcon: 0.5,
          ),
        );
      }),
    );
  }
}
