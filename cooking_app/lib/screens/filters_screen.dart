import 'package:flutter/material.dart';
import '../widgets/filters_items.dart';
class  FilterScreen extends StatefulWidget {
  const  FilterScreen({super.key});

  @override
  State< FilterScreen> createState() => _FilterScreenState();
}

// ignore: camel_case_types
class _FilterScreenState extends State< FilterScreen> {
    // ignore: non_constant_identifier_names
    bool icon_f1=false;
    // ignore: non_constant_identifier_names
    bool icon_f2=false;
    // ignore: non_constant_identifier_names
    bool icon_f3=false;
    // ignore: non_constant_identifier_names
    bool icon_f4=false;
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
          appBar: AppBar(
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.move_to_inbox,color: Colors.white,),
              )
            ],
        iconTheme:const IconThemeData(color: Colors.black),
        title:const Text('My Filters',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800),),
      backgroundColor: const Color.fromARGB(255,138,196,73,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Center(child: Text('Adjust your meal selection',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
          
          InkWell(
            onTap: () {
              setState(() {
                icon_f1=!icon_f1;
              });
            },
            child: Filters_items('Gluten', icon_f1)),
              InkWell(
            onTap: () {
              setState(() {
                icon_f2=!icon_f2;
              });
            },
            child: Filters_items('Lactose', icon_f2)),
              InkWell(
            onTap: () {
              setState(() {
                icon_f3=!icon_f3;
              });
            },
            child: Filters_items('Vegetarian', icon_f3)),
              InkWell(
            onTap: () {
              setState(() {
                icon_f4=!icon_f4;
              });
            },
            child: Filters_items('vegen', icon_f4))
          ]
        ),
      ),
    );
  }
}