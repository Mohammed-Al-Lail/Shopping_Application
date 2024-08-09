import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoping_center_project/classes/Product.dart';


// ignore: camel_case_types
class productdetailsScreenAppBar extends StatefulWidget {

  const productdetailsScreenAppBar( // constructor
    {
    super.key,
    required this.product
  });

  final Product product ;
  
  @override
  State<productdetailsScreenAppBar> createState() => _productdetailsScreenAppBarState();
}

class _productdetailsScreenAppBarState extends State<productdetailsScreenAppBar> {


void tagleFavorite(){ // This method is to toggle the isFav statues for the product

    setState(() {
      widget.product.isFav = ! widget.product.isFav; // revers the statues when clickin on the favorite container
    });

    if(  widget.product.isFav && !favoriteProductsList.contains(widget.product) ){ // if the product was favorite and does not exist already on the favorite list

      favoriteProductsList.add(widget.product); // add the product to the favorite List
    }
    else {
      favoriteProductsList.remove(widget.product); // remove the product from the favorite list
    }

  } // End of the method


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
      
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
      
        children: [
      
      // for Arrow Back Button
          GestureDetector(   

            onTap: (){
              Navigator.pop(context); // close the page 
            },

            child: Container(
              width: 50,
              height: 50,
                  
              decoration: const BoxDecoration(
                  
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
                  
              child: const Icon(
                Icons.arrow_back_sharp,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),

          const Spacer(), // take the maximum space
      
      // for Share Button
          Container(
            width: 50,
            height: 50,
      
            decoration: const BoxDecoration(
      
              color: Colors.deepPurple,
              shape: BoxShape.circle,
            ),
                
            child: const Icon(
              Icons.share,
              size: 35,
              color: Colors.white,
            ),
          ),

         const SizedBox(width: 10,),

         // for Favorite Button
          GestureDetector(
            onTap: tagleFavorite,
            child: Container(
              width: 50,
              height: 50,
                  
              decoration: const BoxDecoration(
                  
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
                  
              child:  Icon(
                Icons.favorite_outlined,
                size: 35,
                color: widget.product.isFav? Colors.red.shade900 : Colors.white,
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}