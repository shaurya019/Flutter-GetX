import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers /counter_example.dart';
import 'controllers /example_two_controller.dart';
import 'controllers /notification.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final ExampleThree exampleThree = Get.put(ExampleThree());
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notification'),
              Obx(() =>
                  Switch(
                      value: exampleThree.notification.value,
                      onChanged: (value){
                        exampleThree.setNotification(value);
                      })
              ),
            ],
          ),
        ],
      ),
    );
  }
}