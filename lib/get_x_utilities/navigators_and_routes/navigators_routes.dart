import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorRoutesScreen extends StatefulWidget {
  const NavigatorRoutesScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorRoutesScreen> createState() => _NavigatorRoutesScreenState();
}

class _NavigatorRoutesScreenState extends State<NavigatorRoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get x navigator routes'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: (){
                  Get.toNamed('/screenOne',
                      arguments: [
                        'Muhammad Hamza',
                        'My name is this',
                      ]);
                  // Get.to(ScreenOne(name: 'Muhammad Hamza',));
                },
                child: const Text('Go to Screen One')
            ),
          ),

        ],
      ),
    );
  }
}
