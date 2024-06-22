import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/mark_favourite_app/favourite_controller.dart';

class FavouriteHomeScreen extends StatefulWidget {
  const FavouriteHomeScreen({super.key});

  @override
  State<FavouriteHomeScreen> createState() => _FavouriteHomeScreenState();
}

class _FavouriteHomeScreenState extends State<FavouriteHomeScreen> {

 // create a get Controller

 FavouriteController favouriteController = Get.put(FavouriteController());


  @override
  Widget build(BuildContext context) {


    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: favouriteController.fruitList.length,
          shrinkWrap: true,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                onTap: (){

                  if(favouriteController.favouriteIconList.contains(favouriteController.fruitList[index].toString())){
                    favouriteController.removeFromFavourite(favouriteController.fruitList[index].toString());

                  }

                  else{

                    favouriteController.addToFavourite(favouriteController.fruitList[index].toString());


                  }



                  setState(() {

                  });
                },
                title: Text(favouriteController.fruitList[index].toString()),
                trailing:  Icon(Icons.favorite,
                  color: favouriteController.favouriteIconList.contains(
                      favouriteController.fruitList[index].toString()) ? Colors.red : Colors.grey,
                ),

              ),

            );
          }
      ),
    );
  }
}
