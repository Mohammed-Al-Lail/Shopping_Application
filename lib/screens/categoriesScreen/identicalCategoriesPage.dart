import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping_center_project/BottomApparPage.dart';
import 'package:shoping_center_project/classes/categories.dart';
import 'package:shoping_center_project/utilities/commonUtilites/MyProductsGridview.dart';

class identicalCategoriesPage extends StatelessWidget {
  const identicalCategoriesPage({
    
    super.key,
    required this.categorie
    
    });

  final Categorie categorie ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.deepPurple[100],

      body: SafeArea(

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
          
            children: [

          
              //for AppBar 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomApparPage()));
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                            
                        decoration: const BoxDecoration(
                            
                          color: Colors.deepPurple,
                          shape: BoxShape.circle,
                        ),
                                      
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                                      ),
                    ),

                    
                    Text(
                      categorie.categoryTitle,
                      style: GoogleFonts.aboreto(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 10,),
          
              //for Products
              MyProductsGridview(itemsList: categorie.productsList)
              
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}