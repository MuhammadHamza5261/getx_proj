import 'package:get/get.dart';

class FavouriteController extends GetxController{


  RxList<String> fruitList = ['Orange','Apple','Mangoes','Banana'].obs;
  RxList favouriteIconList = [].obs;


  addToFavourite(String value){
    favouriteIconList.add(value);
  }

  removeFromFavourite(String value){
    favouriteIconList.remove(value);
  }



}