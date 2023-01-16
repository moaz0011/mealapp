// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
class IngredientesItems extends StatelessWidget {
  int numofitem;
  String item;
   // ignore: use_key_in_widget_constructors
   IngredientesItems(this.item,this.numofitem);

  @override
  Widget build(BuildContext context) {
    return 
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
    child: Container(
      color: const Color.fromARGB(255,254,194,0),
      child: Text(' $numofitem  $item',overflow:TextOverflow.ellipsis,) ,),
  )  
    ;
  }
}