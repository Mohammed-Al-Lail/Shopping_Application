import 'package:flutter/material.dart';

class Product{


  Product({ // constrouctor

    required this.title,
    required this.imagePath,
    required this.price,
    required this.itemColors,
  });

 // variables of the class
  final String title;
  final String imagePath;
  final int price;
  final List<Color> itemColors ;
}


// List of many diffrent products
List <Product> allProducts = [

Product(

  title: "Iphone 12",
  imagePath: "lib/images/products/iphon.jpg",
  price: 3200,
  itemColors: [Colors.black , Colors.blueAccent , Colors.red]

),

Product(

  title: "Airbods Pro",
  imagePath: "lib/images/products/Airbods.jpg",
  price: 598,
  itemColors: [Colors.black , Colors.white , Colors.grey]

),

Product(

  title: "Iphone Covers",
  imagePath: "lib/images/products/cover.jpg",
  price: 243,
  itemColors: [Colors.yellow , Colors.green , Colors.red]

),


Product(

  title: "Iphone Charger",
  imagePath: "lib/images/products/charger.jpg",
  price: 120,
  itemColors: [Colors.black , Colors.white , Colors.grey]

),


Product(

  title: "Iphone holder",
  imagePath: "lib/images/products/holder.jpg",
  price: 60,
  itemColors: [Colors.deepPurple , Colors.blue , Colors.black]

),

Product(

  title: "Iphone Screen Protecter",
  imagePath: "lib/images/products/protecter.jpg",
  price: 140,
  itemColors: [Colors.white]

),

Product(

  title: "Headphon",
  imagePath: "lib/images/products/Headphone.jpg",
  price: 312,
  itemColors: [Colors.black , Colors.pink , Colors.orange]

),





];