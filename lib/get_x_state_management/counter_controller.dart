import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CounterController  extends GetxController{

  // RxInt
  RxInt counter = 1.obs;

  incrementCounter(){
    counter.value++;
    print(counter.value);
  }



}