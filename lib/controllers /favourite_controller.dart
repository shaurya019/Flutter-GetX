import 'package:get/get.dart';

class FavController extends GetxController{
  RxList<String> arr = ['Orange' , 'Apple' , 'Pineapple' ,'Banana'].obs;
  RxList temp = [].obs;

  addFav(String value){
    temp.add(value);
  }
  removeFav(String value){
    temp.remove(value);
  }
}