import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/get_x_state_management/counter_controller_two.dart';


class HomeTwoScreen extends StatefulWidget {
  const HomeTwoScreen({super.key});

  @override
  State<HomeTwoScreen> createState() => _HomeTwoScreenState();
}

class _HomeTwoScreenState extends State<HomeTwoScreen> {


  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Home Two Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
            height: height*0.5,
            width: width*0.6,
            color: Colors.red.withOpacity(
                exampleTwoController.opacity.value,
            ),
          ),
          ),
          Obx(() => Slider(
              value: exampleTwoController.opacity.value,
              onChanged: (value){
                exampleTwoController.setOpacity(value);

              }
          ),
          ),

        ],
      ),
    );
  }
}
