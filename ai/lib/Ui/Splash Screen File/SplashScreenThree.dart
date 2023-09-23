import "dart:async";

import "package:ai/Constant%20File/String%20Files/string_text.dart";
import "package:ai/Controller/dashboard_screen_controller.dart";
import "package:ai/Ui/Splash%20Screen%20File/SplashScreenOne.dart";
import "package:ai/Ui/homePage.dart";
import "package:animated_text_kit/animated_text_kit.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:get/get_core/src/get_main.dart";
import "package:video_player/video_player.dart";

class SplashScreenThree extends StatefulWidget {
  const SplashScreenThree({Key? key}) : super(key: key);

  @override
  _SplashScreenThreeState createState() => _SplashScreenThreeState();
}

class _SplashScreenThreeState extends State<SplashScreenThree> {
  final dashboardController = Get.put(DashboardController());

  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => Get.to(HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEAF3FF),
        body: Stack(
          children: [
            Positioned(
                top: 120,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: Hey,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Poppins-Light"),
                            children: <TextSpan>[
                          TextSpan(
                              text: Jarvis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "Poppins-Light")),
                          TextSpan(text: "👋")
                        ])),
                    SizedBox(height: 10.h),
                    SizedBox(height: 10.h),
                    SizedBox(
                        width: 250,
                        child: AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(Show_me_sub,
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins-Light')),
                            ],
                            onTap: () {
                              print("Tap Event");
                            }))
                  ],
                )),
            Center(
              child: AspectRatio(
                aspectRatio: dashboardController.controller.value.aspectRatio,
                child: VideoPlayer(dashboardController.controller),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    decoration: BoxDecoration(color: Color(0xFFffffff)),
                    height: 90.h,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Icon(Icons.close, size: 30.sp)),
                        Icon(Icons.menu, size: 30.sp)
                      ],
                    )))
          ],
        ));
  }
}
