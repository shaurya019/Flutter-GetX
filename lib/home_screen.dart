import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers /counter_example.dart';
import 'controllers /example_two_controller.dart';
import 'getx_routes /screen_one.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final ExampleTwo exampleTwo = Get.put(ExampleTwo());
  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx App'),
      ),
      body:Column(
        children: [
          Obx(() =>
            Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent.withOpacity(exampleTwo.opacity.value),
            ),
          ),
          Obx(() =>
              Slider(
               value: exampleTwo.opacity.value,
                  onChanged: (value){
                    exampleTwo.setOpacity(value);
                  },
              ),
          ),
        ],
      ),
    );
  }
}