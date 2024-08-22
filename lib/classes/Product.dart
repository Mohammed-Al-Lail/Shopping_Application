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
  int indexOfChoosenColor = 0;
  int quantity =1; // initial quantity for the product
  bool isFav = false ; // this variable is to know if the product was selected to be favorite or not

} // End of the class




// List of the suggested products (from diffrent categories)
List <Product> suggestedProductsList = [];

// This is a List of the favorite Products
List<Product> favoriteProductsList = []; // we will add to this list the favorite products


// This List will have the products exist on the shopping cart
List<Product> shoppingCartProductsList = [];