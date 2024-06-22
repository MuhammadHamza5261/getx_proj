
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/get_x_state_management/counter_controller.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // put the counter controller
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.blue,
        onPressed: (){

          counterController.incrementCounter();

        },
      ),
      appBar: AppBar(
        title: const Text('Get x state management'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(counterController.counter.toString(),
              style: const TextStyle(
              fontSize: 30
            ),
            ),
            ),


          ],
        ),
      ),
    );
  }
}
