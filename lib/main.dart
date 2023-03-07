import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getx_localization /languages.dart';
import 'getx_routes /screen_one.dart';
import 'getx_routes /screen_two.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
          builder: (context) {
            return HomeScreen();
          }),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/screen1', page: () => ScreenOne(name: '')),
        GetPage(name: '/screen2', page: () => ScreenTwo()),
      ],
    );
  }
}



