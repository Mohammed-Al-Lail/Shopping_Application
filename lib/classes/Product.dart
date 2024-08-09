import 'package:flutter/material.dart';

class Product{


  Product({ // constrouctor

    required this.title,
    required this.imagePath,
    required this.price,
    required this.itemColors,
    required this.discreption,
    
  });

 // variables of the class
  final String title;
  final String imagePath;
  final int price;
  final List<Color> itemColors ;
  final String discreption;
  int quantity =1; // initial quantity for the product
  bool isFav = false ; // this variable is to know if the product was selected to be favorite or not

} // End of the class




// List of the suggested products (from diffrent categories)
List <Product> suggestedProductsList = [

Product(

  title: "Iphone 12",
  imagePath: "lib/images/electronics/iphon.jpg",
  price: 3200,
  discreption: """Iphone 12 , 128 GB , 7 inches
  created with amazing innoveative design.
  The strongest screen among all othe devices.  """,
  itemColors: [Colors.black , Colors.blueAccent , Colors.red],
   

),

Product(

  title: "Ipad Air",
  imagePath: "lib/images/electronics/ipadAir.jpg",
  price: 2999,
  discreption: """Ipad Air , 1 TB , 14 inches. 
  created with amazing innoveative design.
  The strongest screen among all othe devices.  """,
  itemColors: [Colors.grey.shade800 , Colors.blueAccent.shade100 , Colors.green.shade100]

),

Product(

  title: "Airbods Pro",
  imagePath: "lib/images/electronics/Airbods.jpg",
  discreption: """Airbods Pro is the best chooise to be
   Isolated from the external world.""",
  price: 598,
  itemColors: [Colors.black , Colors.white , Colors.grey]

),

Product(

  title: "Iphone Covers",
  imagePath: "lib/images/electronics/cover.jpg",
  discreption: """Orginal Iphone Cover to protect your device 
  and to make it more  """,
  price: 243,
  itemColors: [Colors.yellow , Colors.green , Colors.red]

),


Product(

  title: "Iphone Charger",
  imagePath: "lib/images/electronics/charger.jpg",
  discreption: """ orginal Iphone charger with fast charge featur """,
  price: 120,
  itemColors: [Colors.black , Colors.white , Colors.grey]

),


Product(
        title: "Sport shoes",
        imagePath: "lib/images/shoses/shoes2.jpg",
        price: 468, 
        itemColors: [Colors.green , Colors.blue , Colors.red], 

        discreption: """A comfortable Shose withe microfaber placed At the
        button of the shoes.
        can be used for running and walking"""
        ),

Product(
        title: "Sport shoes",
        imagePath: "lib/images/shoses/shoes5.jpg",
        price: 670, 
        itemColors: [Colors.red , Colors.grey.shade400 , Colors.brown], 

        discreption: """A comfortable Shose withe microfaber placed At the
        button of the shoes.
        can be used for running and walking"""
        ),

Product(

  title: "Headphon",
  imagePath: "lib/images/electronics/Headphone.jpg",
  discreption: """Headphon with wire , strong sound and isolation ,
  express a new experiance by buying this Headphon""",
  price: 312,
  itemColors: [Colors.black , Colors.pink , Colors.orange]

),


];



// This is a List of the favorite Products
List<Product> favoriteProductsList = []; // we will add to this list the favorite products


// This List will have the products exist on the shopping cart
List<Product> shoppingCartProductsList = [];