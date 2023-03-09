import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers /counter_example.dart';
import 'controllers /example_two_controller.dart';
import 'controllers /favourite_controller.dart';
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
    FavController favController = Get.put(FavController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx App'),
      ),
      body:ListView.builder(
          itemCount: favController.arr.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                onTap: (){
                  if(favController.temp.contains(favController.arr[index].toString())){
                    favController.removeFav(favController.arr[index].toString());
                  }else{
                    favController.addFav(favController.arr[index].toString());
                  }
                },
                title: Text(favController.arr[index].toString()),
                trailing:Obx( ()=>Icon(Icons.favorite,
                  color: favController.temp.contains(favController.arr[index].toString()) ? Colors.red : Colors.white,
                ) )
              ),
            );
          })
    );
  }
}