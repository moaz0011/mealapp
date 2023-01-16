import 'package:cooking_app/widgets/ingredientes_items.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Ingredientes extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String name_item;
  String imagen;
   // ignore: use_key_in_widget_constructors
   Ingredientes(this.imagen,this.name_item);

  @override
  Widget build(BuildContext context) {
    double heightMob = MediaQuery. of(context). size. height;
     double widthMob = MediaQuery. of(context). size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(name_item),
        backgroundColor:const Color.fromARGB(255,231,30,100),),
      body:
      
       Container(
        color: const Color.fromARGB(255, 255,252,233),
         child: Column(
          children: [
            Image.network(imagen),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: heightMob*0.03),
              child:const Text('Ingredientes',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: heightMob*0.2,
              width: widthMob*0.85,
              color: Colors.white,
              child: ListView(children: [
                IngredientesItems('tomatoes', 4),
                IngredientesItems('tablespoon of olive Oil', 1),
                 IngredientesItems('Onion', 1),
                  IngredientesItems('g Spaghetti', 250),
                   IngredientesItems('spices', 1),
                    IngredientesItems('L water', 2),
                    

              ],)
            
           
            ,),
 Padding(
              padding:  EdgeInsets.symmetric(vertical: heightMob*0.03),
              child: const Text('Passos',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ],
      ),
       ) ,
    );
  }
}