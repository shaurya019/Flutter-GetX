import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_routes /screen_one.dart';
import 'state_management_example /counter_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final CounterController controller = Get.put(CounterController());
  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx App'),
      ),
      body:Center(
        child: Obx(()=>Text(controller.counter.toString(),style: TextStyle(fontSize: 60),)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
        },
      ),
    );
  }
}