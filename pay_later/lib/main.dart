import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pay_later/Ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, _) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Clothing e-commerce',
              theme: ThemeData(
                primarySwatch: Colors.orange,
                useMaterial3: true,
                textTheme:
                    Typography.englishLike2021.apply(fontSizeFactor: 1.sp),
              ),
              home: SplashScreen(),
            ));
  }
}
