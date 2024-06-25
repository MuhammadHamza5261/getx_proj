import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart';


   class LoginController extends GetxController{

   final emailController = TextEditingController().obs;
   final passwordController = TextEditingController().obs;

   RxBool loading = false.obs;

    void loginApi() async {

         loading.value = true;

      try{

        final response = await post(Uri.parse('https://reqres.in/api/login'),

          body: {

            "email":  emailController.value.text,
            "password":  passwordController.value.text,

          },

        );

        final data = jsonDecode(response.body);

        if(response.statusCode == 200){

          loading.value = false;
          Get.snackbar(
              backgroundColor: Colors.blue,
              duration: const Duration(seconds: 2),
              dismissDirection: DismissDirection.down,
              snackPosition: SnackPosition.BOTTOM,
              'true', 'ok',
          );

        }

        else{


          loading.value = false;

          Get.snackbar(
            backgroundColor: Colors.blue,
            duration: const Duration(seconds: 2),
            dismissDirection: DismissDirection.down,
              snackPosition: SnackPosition.BOTTOM,
              'Login Failed',  data['error']);

        }

      }

      catch(e){
        loading.value = false;
        Get.snackbar(
          dismissDirection: DismissDirection.down,
            'Exception', e.toString());

      }



    }


}