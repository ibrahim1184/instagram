import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:initial/view/home/home_screen.dart';
import 'package:initial/view/login/login_screen.dart';
import 'package:initial/view/profile/profile_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme:
                AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const HomeScreen(),
      ),
    );
  }
}
