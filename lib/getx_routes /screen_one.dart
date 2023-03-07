import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen.dart';


class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
              },
              child: Text('Go to Page 1'),
            ),
          ),
        ],
      ),
    );
  }
}
