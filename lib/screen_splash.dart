import 'dart:async';
import 'package:flutter/material.dart';
import 'package:micro_services/screen_signup.dart';
import 'package:micro_services/widgets/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignupScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MicroServicesColor.whiteColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Logo',
                style: TextStyle(
                  color: MicroServicesColor.redColor,
                  fontFamily: 'PoetSenOneRegular',
                  fontSize: 55,
                ),
              ),
              Text(
                'App Name',
                style: TextStyle(
                  color: MicroServicesColor.blackColor.withOpacity(0.1),
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
