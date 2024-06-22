import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HeightAndWidth extends StatefulWidget {
  const HeightAndWidth({Key? key}) : super(key: key);

  @override
  State<HeightAndWidth> createState() => _HeightAndWidthState();
}

class _HeightAndWidthState extends State<HeightAndWidth> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Get x height and width'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            height: Get.height *.2,
            child: const Center(
                child: Text('Height and width'),
            ),
          ),

        ],
      ),
    );
  }
}
