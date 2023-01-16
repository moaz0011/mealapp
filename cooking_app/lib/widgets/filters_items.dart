import 'package:flutter/material.dart';
class Filters_items extends StatelessWidget {
  String text_1;
  bool icon_f=false;
   Filters_items(this.text_1,this.icon_f);

  @override
  Widget build(BuildContext context) {
    double widthMob = MediaQuery. of(context). size.width;
      double heightMob = MediaQuery. of(context). size.height;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: heightMob*0.02,horizontal: widthMob*0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text_1,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              Text('Only inxlude $text_1  meals',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),), ],
          ),
           icon_f==false?Icon(Icons.toggle_off,size: 35,):Icon(Icons.toggle_on,color: Colors.green,size: 35,),

        ],
      ),
    );
  }
}