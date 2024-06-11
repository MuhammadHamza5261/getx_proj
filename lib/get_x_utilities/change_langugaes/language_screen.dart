import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Languages Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            // message and name  is key that comes language class
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: (){
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: Text('English Language')
              ),
              OutlinedButton(
                  onPressed: (){
                    Get.updateLocale(Locale('ur', 'PK'));
                  },
                  child: Text('Urdu Language')
              ),
            ],
          ),
        ],
      ),
    );
  }
}
