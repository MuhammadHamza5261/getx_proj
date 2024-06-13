import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}


class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get x Dialog'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Material(
            elevation: 5,
            child: ListTile(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15),
             ),
              title: const Text('Get x alert dialog'),
              subtitle: const Text('Dialog alert with get x'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete chat',
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  middleText: 'Are you shure to want delete your chat',
                  cancel: TextButton(
                      onPressed: (){},
                      child: const Text('No'),
                  ),

                  confirm: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: const Text('Yes'),
                  ),

                );

              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            elevation: 10,
            child: ListTile(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15),


             ),
              title: const Text('Get x bottom sheet'),
              subtitle: const Text('Bottom sheet with get x'),
              onTap: (){
                Get.bottomSheet(
                   Container(
                     color: Colors.grey.shade200,
                     child: Column(
                       children: [
                         ListTile(
                           leading: const Icon(Icons.light),
                           title: const Text('Light Theme'),
                           onTap: (){
                             Get.changeTheme(ThemeData.light());
                           },
                         ),
                         ListTile(
                           onTap: (){
                             Get.changeTheme(ThemeData.dark());
                           },
                           leading: const Icon(Icons.dark_mode),
                           title: const Text('Dark Theme'),
                         ),
                       ],
                     ),
                   ),
                );

              },
            ),
          ),

        ],
      ),
    );
  }
}
