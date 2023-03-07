import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_routes /screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final heigh = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx App'),
      ),
      body:Container(
        height:heigh *.2,
        width: Get.width*.8,
        color: Colors.blueAccent,
        child: Center(
          child: Text('Center'),
        ),
      )
    );
  }
}
