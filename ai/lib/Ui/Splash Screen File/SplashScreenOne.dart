import 'dart:async';

import 'package:ai/Ui/Splash%20Screen%20File/SplashScreenSecond.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenOne extends StatefulWidget {
  const SplashScreenOne({Key? key}) : super(key: key);

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Get.to(SplashScreenSecond()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Image.asset("assets/splash_screen1.gif"),
            )));
  }
}
