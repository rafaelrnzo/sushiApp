// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';

class TopUp {
  const TopUp(this.id, this.title, this.price, this.lineThrough);

  final int id;
  final String title; 
  final String price;
  final String lineThrough;
}

List<TopUp> topUps = [
  TopUp(1, "Rp5.000", "Rp6.000", "Rp7.200"), 
  TopUp(2, "Rp10.000", "Rp11.000", "Rp12.200"), 
  TopUp(3, "Rp20.000", "Rp21.000", "Rp23.200"), 
  TopUp(4, "Rp30.000", "Rp31.000", "Rp32.200"), 
  TopUp(5, "Rp50.000", "Rp50.000", "Rp52.200"), 
  TopUp(6, "Rp75.000", "Rp74.000", "Rp76.200"), 
  TopUp(7, "Rp100.000", "Rp97.000", "Rp106.200"), 
  TopUp(8, "Rp150.000", "Rp145.000", "Rp152.200"), 
  TopUp(9, "Rp200.000", "Rp195.000", "Rp202.200"), 
  TopUp(10, "Rp250.000", "Rp230.000", "Rp252.200"), 
  TopUp(11, "Rp500.000", "Rp480.000", "Rp500.200"), 
  TopUp(12, "Rp750.000", "Rp700.000", "Rp752.200"), 
  TopUp(12, "Rp999.000", "Rp900.000", "Rp1.003.200"), 
  TopUp(12, "1.500.000", "1.200.000", "Rp1.500.200"), 
];
