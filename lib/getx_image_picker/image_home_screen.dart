import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/getx_image_picker/image_picker_controller.dart';

class ImageHomeScreen extends StatefulWidget {
  const ImageHomeScreen({super.key});

  @override
  State<ImageHomeScreen> createState() => _ImageHomeScreenState();
}

class _ImageHomeScreenState extends State<ImageHomeScreen> {
  @override
  Widget build(BuildContext context) {

    ImagePickerController controller = Get.put(ImagePickerController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image Home Screen'),
        backgroundColor: Colors.blue,
      ),
      body:  Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagePath.isNotEmpty ?
                    FileImage(File(controller.imagePath.toString())):
                    null
              ),
            ),
            TextButton(
                onPressed: (){
                  controller.getImage();
                },
                child: const Text('Pick Image'),
            ),
          ],
        );
      }),

    );
  }
}
