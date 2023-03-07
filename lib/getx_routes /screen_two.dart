import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen.dart';


class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
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
                Get.to(HomeScreen());
                // Get.back();
              },
              child: Text('Go to Page 2'),
            ),
          ),
        ],
      ),
    );
  }
}