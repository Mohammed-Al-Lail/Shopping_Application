import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/classes/categories.dart';

class productProvider extends ChangeNotifier{


// List of the suggested products (from diffrent categories)
final List <Product> _suggestedProductsList = [];

// This is a List of the favorite Products
final List<Product> _favoriteProductsList = []; // we will add to this list the favorite products


// This List will have the products exist on the shopping cart
final List<Product> _shoppingCartProductsList = [];

int _totalPrice =0;


//...........................   Methods   .....................................

// method to add to the suggested list
void addTosuggestedList(){

      // every time we run the application we will see diffrent items

         while(_suggestedProductsList.length!=12){ // The number of products on the suggested Products list  

          int randomCategoryIndex= Random().nextInt(allCategoriesList.length); // random number to choose random category
          int randomProductIndex = Random().nextInt( allCategoriesList[randomCategoryIndex].productsList.length); // random number to choose random product from the choosen category

         Product methodProduct= allCategoriesList[randomCategoryIndex].productsList[ randomProductIndex ]; // creat an object of product (random product) 
    
         if(!_suggestedProductsList.contains(methodProduct)){ // check that the random product does not exist on the suggested list
             _suggestedProductsList.add(methodProduct); // add it if it does not exsist
         }      
    } 
   
    notifyListeners();

    
}




// Methods for favorit List
      // to add product + remove
  void addToFavoriteList(Product product){

    if(  product.isFav && !_favoriteProductsList.contains(product) ){ // if the product was favorite and does not exist already on the favorite list

      _favoriteProductsList.add(product); // add the product to the favorite List
    }
    else {
      _favoriteProductsList.remove(product); // remove the product from the favorite list
    }

    notifyListeners();
  }

   


 //Methods for (shopping cart)  List  

    // To add product to the list
  bool addToShoppingCartList(Product product){
    if(!_shoppingCartProductsList.contains(product)){
      _shoppingCartProductsList.add(product);

      _totalPrice += product.price*product.quantity; // update the value of the total price

       notifyListeners();
      return true;
    }
    return false;
  }

      //To remove product from the shoppin cart
  void removFromShoppingCartList(Product product){

    if(_shoppingCartProductsList.contains(product)){

      _shoppingCartProductsList.remove(product);

      _totalPrice -= product.price*product.quantity; // update the value of the total price
    }
    notifyListeners();
  }

  
  // Methods to increas and decrease the product quantity

    // inc 
    void increasQuantity(Product product){
      product.quantity++;
      _totalPrice += product.price; // update the value of the total price
      notifyListeners();

    }

    // dec 
    void decreaseQuantity(Product product){
      product.quantity--;
      _totalPrice -= product.price; // update the value of the total price
      notifyListeners();

    }
  



// geters 
  List<Product> get  suggestedProductsList => _suggestedProductsList;
  List<Product> get  favoriteProductsList => _favoriteProductsList;
  List<Product> get  shoppingCartProductsList => _shoppingCartProductsList;
  int get totalPrice => _totalPrice;



} // End of the class




//Notes about using the provider:

 // 1-if we will use variable (directly) inside the provider class we have to make the (listen = true) => {the defult value}  == context.wach()
    //Example:=> Provider.of<productProvider>(context, listen: true).favoriteProductsList
    // the (favoriteProductsList) is a variable not methode
    

// 2-if we will use (Method) inside the provider class we have to make the (listen = false) == context.read()
    //Example:=> Provider.of<productProvider>(context, listen: false).addTosuggestedList()
    //the { addTosuggestedList()} is method not variable






    /*  The listen argument is a boolean that determines whether the Consumer widget
        should listen for changes to the provider's value and rebuild when it changes.
         If listen is set to true (the default), the Consumer widget
        will rebuild every time the provider's value changes.
        If listen is set to false,
        the Consumer widget will not listen for changes and will
        only rebuild when its parent widget rebuilds.*/
     