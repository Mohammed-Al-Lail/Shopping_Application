import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/utilities/commonUtilites/MyProductsGridview.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      backgroundColor: Colors.deepPurple[100],
      
      appBar: AppBar(
        centerTitle: true,
        title:  Text(

          "Favorite Page",
          style: GoogleFonts.aboreto( // using google fonst package
              fontSize: 50,
              fontWeight: FontWeight.bold,
        ),
      ),

      backgroundColor: Colors.deepPurple,
      toolbarHeight: 70,
      automaticallyImplyLeading: false, // to prevent the implicit back arrow button
    ),


    body:  favoriteProductsList.isEmpty?  // is the favorit list empty ?

        const Center(  // if the list was empty
          child: Text(
            "No items on your favorit list",
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.black54
              ),
            ),
        )
    
    :SingleChildScrollView( // if the list was not empty
      child: Column(
      
        children: [
      
          const SizedBox(height: 30,),
        // for the choosen favorite items in gridview
          MyProductsGridview(itemsList: favoriteProductsList), 

           const SizedBox(height: 20,),
          
      
        ],
      ),
    ),

    );
  }
}