import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/get_x_utilities/navigators_and_routes/screen_two.dart';



class ScreenOne extends StatefulWidget {
// final String name;
  var name;
  ScreenOne({super.key, this.name = ''});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'+ Get.arguments[0]),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: (){
                  Get.to(const ScreenTwo());
                },
                child: const Text('Go To Screen 2')
            ),
          ),

        ],
      ),
    );
  }
}
