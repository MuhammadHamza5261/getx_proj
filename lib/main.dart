import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'get_x_state_management/home.dart';
import 'get_x_state_management/home_three.dart';
import 'get_x_state_management/home_two.dart';
import 'get_x_utilities/change_langugaes/language_screen.dart';
import 'get_x_utilities/change_langugaes/languages.dart';
import 'get_x_utilities/navigators_and_routes/navigators_routes.dart';
import 'get_x_utilities/navigators_and_routes/screen_one.dart';
import 'get_x_utilities/navigators_and_routes/screen_two.dart';
import 'get_x_utilities/screens/dialog2.dart';
import 'get_x_utilities/screens/get_x_dialog.dart';
import 'getx_image_picker/image_home_screen.dart';
import 'mark_favourite_app/favourite_basic.dart';
import 'mark_favourite_app/favourite_home_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // if you can use get x utilities than we use get material app
    return GetMaterialApp(
      home: ImageHomeScreen(),

      /// add different languages in flutter app
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      translations: Languages(),


      ///how to use routes in get x
      getPages: [
        GetPage(
            name: '/', page: () => const NavigatorRoutesScreen(),
        ),
        GetPage(
          name: '/screenOne', page: () =>  ScreenOne(),
        ),
        GetPage(
          name: '/screenTwo', page: () => const ScreenTwo(),
        ),
      ],
    );
  }
}

