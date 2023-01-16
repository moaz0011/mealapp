import 'package:flutter/material.dart';
class drawer_appBar_items extends StatelessWidget {
  String text_i;
  IconData icon_i;
   drawer_appBar_items(this.icon_i,this.text_i);

  @override
  Widget build(BuildContext context) {
     double widthMob = MediaQuery. of(context). size.width;
    return
     Padding(
       padding:  EdgeInsets.symmetric(vertical:10 ,horizontal: widthMob*0.03),
       child: Row(
              children: [
                Icon(icon_i),
                Text(text_i,style:const TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)
              ],
             ),
     );
  }
}