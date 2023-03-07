import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
       Get.snackbar(
           'Shaurya','Subscribe',
       icon: Icon(Icons.add),
       backgroundColor: Colors.blueAccent,
       snackPosition: SnackPosition.TOP,
       );
        },
      ),
    );
  }
}
