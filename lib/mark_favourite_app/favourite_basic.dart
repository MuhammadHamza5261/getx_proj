import 'package:flutter/material.dart';


class FavouriteBasic extends StatefulWidget {
  const FavouriteBasic({super.key});

  @override
  State<FavouriteBasic> createState() => _FavouriteBasicState();
}

class _FavouriteBasicState extends State<FavouriteBasic> {

  // create a list
  List<String> fruitList = ['Orange','Apple','Mangoes','Banana',];

  List<String> tempFruitList = [];


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
        itemCount: fruitList.length,
        shrinkWrap: true,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                onTap: (){

                  if(tempFruitList.contains(fruitList[index].toString())){
                    tempFruitList.remove(fruitList[index].toString());

                  }
                  else{
                    tempFruitList.add(fruitList[index].toString());
                  }



                  setState(() {

                  });
                },
                title: Text(fruitList[index].toString()),
                trailing:  Icon(Icons.favorite,
                  color: tempFruitList.contains(
                      fruitList[index].toString()) ? Colors.red : Colors.grey,
                ),

            ),

            );
          }
      ),
    );
  }
}
