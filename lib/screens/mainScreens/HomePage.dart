import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/classes/categories.dart';
import 'package:shoping_center_project/utilities/HomePageutilites/AdvSlider.dart';
import 'package:shoping_center_project/utilities/HomePageutilites/AllCategories.dart';
import 'package:shoping_center_project/utilities/HomePageutilites/MyAppar.dart';
import 'package:shoping_center_project/utilities/HomePageutilites/homePageDrawer.dart';
import 'package:shoping_center_project/utilities/commonUtilites/MyProductsGridview.dart';
import 'package:shoping_center_project/utilities/HomePageutilites/MySearchBar.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // method to update suggestedList
    List<Product> updatedList(){

        suggestedProductsList.clear(); // remove everything on the list to fill it again 

         while(suggestedProductsList.length!=8){ // The number of products on the suggested Products list  

          int randomCategoryIndex= Random().nextInt(allCategoriesList.length); // random number to choose random category
          int randomProductIndex = Random().nextInt( allCategoriesList[randomCategoryIndex].productsList.length); // random number to choose random product from the choosen category

         Product methodProduct= allCategoriesList[randomCategoryIndex].productsList[ randomProductIndex ]; // creat an object of product (random product) 
    
         if(!suggestedProductsList.contains(methodProduct)){ // check that the random product does not exist on the suggested list
             suggestedProductsList.add(methodProduct); // add it if it does not exsist
         }      
    } 
      return suggestedProductsList; // return the list
   

  
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.deepPurple[100],
      
      drawer: const homePageDrawer(),

      
      body:  SafeArea(

        child: SingleChildScrollView(
          child: Column(
          
            children: [
              
              // for my appar ( 2 containers with icons)
              const MyAppar(),
              const SizedBox(height: 10,),
          
              // for my Search bar
              const MySearchBar(),
              const SizedBox(height: 10,),
          
              // for ADV slider
              AdvSlider(),
              const SizedBox(height: 10,),
          
              // for categories
              const AllCategories(),
              
              
              // Special For you + See all 
              Padding(
                padding: const EdgeInsets.only(left: 8 ,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                     Text(
                      "Special For you",
                      style: GoogleFonts.acme( // using google fonst package
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                
                    Text(
                      "See all ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10,),


                
            // suggeted items in gridview
            
               MyProductsGridview(
                itemsList: updatedList() // see the method above
                     ),


              const SizedBox(height: 20,),

              
          
          
          
            ],
          
          
          ),
        ),
      ),


    

    );
  }
}