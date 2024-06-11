import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
          Get.snackbar('Muhammad Hamza', 'Senior Flutter Developer',
            icon: const Icon(Icons.add),
            onTap: (snap){

            },
            mainButton: TextButton(onPressed: (){}, child:  const Text('Click')),
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
          );

        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
