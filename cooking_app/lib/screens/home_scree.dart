import 'package:cooking_app/widgets/drawer_appBar.dart';
import 'package:cooking_app/widgets/item_home_screen.dart';
import 'package:flutter/material.dart';
import 'food_categories.dart';
// ignore: use_key_in_widget_constructors
class Homescreen extends StatelessWidget {
final List<Item_home_screen> items=[Item_home_screen('Italian',const Color.fromARGB(255,177,75,187)),
Item_home_screen('Quick & Easy',const Color.fromARGB(255,245,98,82)),
Item_home_screen('Hamburgers', const Color.fromARGB(255,35,168,147)),
Item_home_screen('German',const Color.fromARGB(255,255,168,27)),
Item_home_screen('Light & Lovely',const Color.fromARGB(255,255,202,34)),
Item_home_screen('Exotic',const Color.fromARGB(255,56,163,243,)),
Item_home_screen('Breakfast',const Color.fromARGB(255,96,184,97)),
Item_home_screen('Asian',const Color.fromARGB(255,27,181,243,)),
Item_home_screen('French',const Color.fromARGB(255,155,203,92)),
Item_home_screen('Summer',const Color.fromARGB(255,238,51,114)),
];


  @override
  Widget build(BuildContext context) {
     double heightMob = MediaQuery. of(context). size. height;
   double widthMob = MediaQuery. of(context). size. width;
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 255,252,233),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255,255,255,231,),
        child: Drawer_home() ,
      ),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        title:const Text('Categories',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800),),
      backgroundColor:const Color.fromARGB(255,138,196,73,),
      ),



      body:  
      

       Padding(
        
         padding:  EdgeInsets.symmetric(horizontal: widthMob*0.05,vertical: heightMob*0.02),
         child:GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2
          ,crossAxisSpacing: 10,
          childAspectRatio: 3/4,
          mainAxisSpacing: 10),
              
              itemCount: 10,
               itemBuilder:((context, index) {
                return 
                     InkWell(
                      onTap: () =>  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>FoodCategories(items[index].item_name)))
    ,
                       child:
                       
                       Container(
                        decoration: BoxDecoration(color:items[index].color_card,borderRadius: BorderRadius.circular(20),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                           child: Text(items[index].item_name,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                         ),
                                   
                       )
                       /*ListTile( 
                                 shape: RoundedRectangleBorder( //<-- SEE HERE
    side: BorderSide(width: 2),
    borderRadius: BorderRadius.circular(20),
  ),
                        tileColor:items[index].color_card,
                       title:
                                  Text(items[index].item_name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                   
                                 ),*/
                     );
                
              }) 
      ),
      
         
       ),
      
    );
  }
}