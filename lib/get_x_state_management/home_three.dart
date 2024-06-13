import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller_three.dart';



class HomeThree extends StatefulWidget {
  const HomeThree({super.key});

  @override
  State<HomeThree> createState() => _HomeThreeState();
}


class _HomeThreeState extends State<HomeThree> {

  // put the controller
  CounterControllerThree counterControllerThree = Get.put(CounterControllerThree());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Home screen three'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Notications',
                style: TextStyle(
                    fontSize: 20,
                ),
              ),
              Obx(() =>  Switch(

                  value: counterControllerThree.notification.value,

                  onChanged: (value){
                    counterControllerThree.setNotification(value);
                  }


              ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
