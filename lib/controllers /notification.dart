import 'dart:ffi';

import 'package:get/get.dart';

class ExampleThree extends GetxController{
  RxBool notification = false.obs;
  setNotification(bool value){
    notification.value = value;
  }
}
