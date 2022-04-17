import 'package:flutter/material.dart';
import 'package:play_store_app/responsive/mobile_screen_layout.dart';
import 'package:play_store_app/responsive/responsive_screen_layout.dart';
import 'package:play_store_app/responsive/web_screen_layout.dart';
import 'package:play_store_app/utils/colors.dart';

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
      title: 'Image Villa',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
