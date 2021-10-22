import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vendor_app/screens/authentication/login_page.dart';
import 'package:vendor_app/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Vendor',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
              duration: 400,
              splash: Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/743007.png"),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Vendor",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              //"assets/images/743007.png" ,
              splashIconSize: 300,
              nextScreen: LoginPage(),
              splashTransition: SplashTransition.rotationTransition,
              pageTransitionType: PageTransitionType.fade,
              backgroundColor: AppColors.appColor),
        );
  }
}
