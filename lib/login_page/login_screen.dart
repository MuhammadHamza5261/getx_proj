import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/login_page/login_controller.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  LoginController controller = Get.put(LoginController());


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(
        title: const Text('Login Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                labelText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(20),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(20),
                ),

              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.passwordController.value ,
              decoration: InputDecoration(
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(20),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black54)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black54),
                )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return  SizedBox(
                height: height*0.065,
                width: width*0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  onPressed: (){
                    controller.loginApi();
                  },
                  child: controller.loading.value ? const CircularProgressIndicator(
                    color: Colors.white,
                  ):
                  const Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                    ),
                  ),
                ),
              );
            })


          ],
        ),
      ),

    );
  }
}
