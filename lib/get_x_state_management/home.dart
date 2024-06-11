import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/get_x_state_management/counter_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final CounterController controller = Get.put(CounterController());



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get x state management'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
        },
      ),
      body: Column(
        children: [
          Center(
            child: Obx((){
              return Text(controller.counter.toString(),style: const TextStyle(fontSize: 60));
            })
          ),
        ],
      ),

    );
  }
}
