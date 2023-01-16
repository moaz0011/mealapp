import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';
import '../screens/home_scree.dart';
import 'drawer_appBar_items.dart';

// ignore: camel_case_types
class Drawer_home extends StatelessWidget {
   const Drawer_home({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMob = MediaQuery. of(context). size. height;
    double widthMob = MediaQuery. of(context). size.width;
     double statceBar = MediaQuery. of(context).padding.top;
    return 
     Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
              height: heightMob*0.15,
              width: double.infinity,
              color: const Color.fromARGB(255,254,194,0),
              child: 
             Padding(
               padding:  EdgeInsets.only(top: statceBar,left: widthMob*0.03,right: 0.03),
               child:const Text('Cooking Up!',style: TextStyle(color: Color.fromARGB(255,170,193,43),fontSize: 28,fontWeight: FontWeight.w900),),
             )
             ,),
             
             InkWell(
              onTap: () {
                 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Homescreen ()));
              },
              child: drawer_appBar_items(Icons.restaurant, '  Meals')),
             
            InkWell  (
              onTap: () {
                 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  const FilterScreen ()));
              },
              child: drawer_appBar_items(Icons.settings, '  Filters')),

           ],
         );
    
  }
}