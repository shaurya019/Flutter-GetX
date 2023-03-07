import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_routes /screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx App'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Get.to(ScreenOne());
              },
              child: Text('Go to Page 2'),
            ),
          ),
        ],
      ),
    );
  }
}
