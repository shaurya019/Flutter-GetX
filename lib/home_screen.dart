import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers /counter_example.dart';
import 'controllers /example_two_controller.dart';
import 'controllers /favourite_controller.dart';
import 'controllers /login.dart';
import 'controllers /notification.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx App'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration: InputDecoration(
                    hintText: 'Email'
                ),
              ),
              TextFormField(
                controller: controller.password.value,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password'
                ),
              ),
              SizedBox(height: 40,),
              Obx(() => InkWell(
                onTap: (){
                  controller.loginApi();
                },
                child: controller.loading.value ? Center(child: CircularProgressIndicator()) :  Container(
                  height: 45,
                  color: Colors.green,
                  child: Center(child: Text('Login')),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}