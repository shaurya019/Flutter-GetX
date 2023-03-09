import 'dart:ffi';

import 'package:get/get.dart';

class ExampleTwo extends GetxController{
  RxDouble opacity = .1.obs;
  setOpacity(double value){
    opacity.value = value;
  }
}
