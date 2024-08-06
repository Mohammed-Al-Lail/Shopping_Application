import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/utilities/AdvSlider.dart';
import 'package:shoping_center_project/utilities/AllCategories.dart';
import 'package:shoping_center_project/utilities/MyProductsGridview.dart';
import 'package:shoping_center_project/utilities/MySearchBar.dart';
import 'package:shoping_center_project/utilities/myAppar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.deepPurple[100],
      
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
               MyProductsGridview(itemsList: suggestedProductsList,),
              const SizedBox(height: 20,),

              
          
              
          
             
          
              
              
              
              
          
              
              
          
          
          
          
            ],
          
          
          ),
        ),
      ),


    

    );
  }
}