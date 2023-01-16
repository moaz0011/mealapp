import 'package:flutter/material.dart';
import '../widgets/food_cards.dart';

class FoodCategories extends StatelessWidget {
 final String categoriesName;
   const FoodCategories(this.categoriesName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoriesName),
      backgroundColor:const Color.fromARGB(255,138,196,73)
      ,),
      body: 

      Container(
         color:const Color.fromARGB(255, 255,252,233),
        child: ListView(
          
          children: [
            Column(
          children: [
            FoodName(Icons.timer_outlined, Icons.work, Icons.attach_money, '  20 min', '  Simplo', '  Afwords','https://c4.wallpaperflare.com/wallpaper/346/714/528/pasta-4k-high-resolution-wallpaper-preview.jpg','Passta'),
            FoodName(Icons.timer_outlined, Icons.work, Icons.attach_money, '  15 min', '  Simplo', '  Afwords','https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=600','Burger'),
            FoodName(Icons.timer_outlined, Icons.work, Icons.attach_money, '  35 min', '  Simplo', '  Afwords','https://images7.alphacoders.com/596/thumbbig-596343.webp','Pizza'),
          ],
        )
          ],
        ),
      )
      ,
      
    );
  }
}