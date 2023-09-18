// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';

class Food {
  const Food(this.id,this.name,this.img, this.price);

  final int id;
  final String name;
  final String img;
  final String price;
  

}

List<Food> foods = [
   Food (1,"Beef Cheese Roll","assets/images/makimono/beef-cheese-roll.jpg", "Rp56.900"),  //add image path here
   Food (2,"California Roll","assets/images/makimono/california-roll.jpg", "Rp46.900"),  //add image path here
   Food (3,"Spicy Salmon Roll ","assets/images/makimono/spicy-double-salmon-belly-roll.jpg", "Rp97.500"),  //add image path here
   Food (4,"Gyu Lava Roll","assets/images/makimono/gyu-lava-roll.jpg", "Rp76.900"),  //add image path here
   Food (5,"Tropical Roll","assets/images/makimono/tropical-roll.jpg", "Rp56.900"),  //add image path here
  //  Food (6, "Spicy Salmon", "https://res.cloudinary.com/dp3p3g7xg/image/upload/v1694489282/spicy-double-salmon-belly-roll_szxsc6.jpg", "Rp54.300")
];

