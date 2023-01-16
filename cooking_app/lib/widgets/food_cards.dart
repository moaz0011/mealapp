import 'package:flutter/material.dart';
import '../screens/ingredientes.dart';
class FoodName extends StatelessWidget {
  IconData i1;
  IconData i2;
  IconData i3;
  String t1;
  String t2;
  String t3;
  String imagen;
  String textImage;

   FoodName(this.i1,this.i2,this.i3,this.t1,this.t2,this.t3,this.imagen,this.textImage);

  @override
  Widget build(BuildContext context) {
   double heightMob = MediaQuery. of(context). size. height;
   double widthMob = MediaQuery. of(context). size. width;
    return InkWell(
      onTap: () =>Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Ingredientes (imagen,textImage))),
      child: Card( 
        semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
         shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 25,
      margin: EdgeInsets.all(10),
     child: Container(
      height: heightMob*0.40,
      width: double.infinity,
      child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
          Image.network(imagen),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text(textImage,style: const TextStyle(color: Colors.white,backgroundColor: Color.fromARGB(150, 0, 0, 0),fontSize: 22,fontWeight: FontWeight.w500),),
          )
        ],),
 
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Flexible(child: Icon(i1)),
                Flexible(child: Text(t1,maxLines: 1,overflow: TextOverflow.ellipsis,))
              ],),
            ),
            Flexible
            (
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Flexible(child: Icon(i2)),
                Flexible(child: Text(t2,maxLines: 1,overflow: TextOverflow.ellipsis))
              ],),
            ),
            Flexible(
            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Flexible(child: Icon(i3)),
                Flexible(child: Text(t3,maxLines: 1))
              ],),
            ),
              
        ],
         ),
      )]
     )
     ,),
    
    ),
    );
  }
}