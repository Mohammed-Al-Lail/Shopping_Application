import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/utilities/commonUtilites/animatedHeart.dart';


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
          Container(
            width: 50,
            height: 50,
                
            decoration: const BoxDecoration(
                
              color: Colors.deepPurple,
              shape: BoxShape.circle,
            ),
            child: AnimatedHeart(product: widget.product,), // using the animated Heart
          ),
      
        ],
      ),
    );
  }
}