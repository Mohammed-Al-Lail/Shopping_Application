import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';

class Categorie {


Categorie({ // constructor
  required this.imagePath ,
  required this.categoryTitle,
  required this.productsList,
});

final String imagePath ;
final String categoryTitle ;
final List<Product> productsList ; // each category will has list of products from the same category


}

List <Categorie> allCategoriesList = [

  Categorie( // shoses
    imagePath: "lib/images/shoses/shoes.jpg",
    categoryTitle: "Shoeses",

    productsList: [

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
        imagePath: "lib/images/shoses/shoes3.jpg",
        price: 320, 
        itemColors: [Colors.grey.shade800 , Colors.blue , Colors.white], 

        discreption: """A comfortable Shose withe microfaber placed At the
        button of the shoes.
        can be used for running and walking"""
        ),

        Product(
        title: "Sport shoes",
        imagePath: "lib/images/shoses/shoes4.jpg",
        price: 389, 
        itemColors: [Colors.green ,], 

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
        title: "Sport shoes",
        imagePath: "lib/images/shoses/shoes6.jpg",
        price: 289, 
        itemColors: [Colors.grey.shade400], 

        discreption: """A comfortable Shose withe microfaber placed At the
        button of the shoes.
        can be used for running and walking"""
        ),

    ], // End of shose products list

  ), // End of shoes Category




  Categorie( // Electronics

    imagePath: "lib/images/electronics/electronicsCover.jpg",
    categoryTitle: "Electronics",

    productsList: [

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

  title: "Iphone holder",
  imagePath: "lib/images/electronics/holder.jpg",
  discreption: """ Phones holder , can be used inside the Car """,
  price: 60,
  itemColors: [Colors.deepPurple , Colors.blue , Colors.black]

),

Product(

  title: "Iphone Protecter",
  imagePath: "lib/images/electronics/protecter.jpg",
  discreption: """The best option to protect your devise  """,
  price: 140,
  itemColors: [Colors.white]

),

Product(

  title: "Headphon",
  imagePath: "lib/images/electronics/Headphone.jpg",
  discreption: """Headphon with wire , strong sound and isolation ,
  express a new experiance by buying this Headphon""",
  price: 312,
  itemColors: [Colors.black , Colors.pink , Colors.orange]

),

    ],// End of electronic products list

  ), // end of electronics category





  Categorie( // manFasion

    imagePath: "lib/images/manFasion/manFasion.jpg",
    categoryTitle: "Man's fasion",

    productsList: [

      


    ], // End of man Fasion products list

  ), // End of man fasion Category





  Categorie( // women fasion

    imagePath: "lib/images/womenFasion/womenFasion.jpg",
    categoryTitle: "Women's Fasion",
    productsList: [],

  ),

  Categorie( // jewelry

    imagePath: "lib/images/jewelry/jewelry.jpg",
    categoryTitle: "Jewelries",
    productsList: [],

  ),

  Categorie( //beouty

    imagePath: "lib/images/beouty/beouty.jpg",
    categoryTitle: "Beouty",
    productsList: [],

  ),
  
];