import 'package:flutter/material.dart';

class Product{
  final String image,title,description;
  final int price,size,id;
  final Color color;

  Product(
      {
        @required this.image,
        @required this.title,
         this.description,
        @required this.price,
        @required this.size,
        @required this.id,
        @required this.color
      });
}

List<Product> products=[
  Product(
      id: 1,
      title: "Office Bag",
      price: 240,
      size: 16,
      image: "images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Work Bag",
      price: 400,
      size: 12,
      image: "images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Club Bag",
      price: 190,
      size: 8,
      image: "images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Travel Bag",
      price: 710,
      size: 17,
      image: "images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "shop Bag",
      price: 300,
      size: 13,
      image: "images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
      id: 6,
      title: "WeakEnd Bag",
      price: 800,
      size: 18,
      image: "images/bag_6.png",
      color: Color(0xFFAEAEAE),),
];
