import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/BottomApparPage.dart';

// ignore: camel_case_types
class productdetailsScreenAppBar extends StatelessWidget {

  const productdetailsScreenAppBar( // constructor
    {
    super.key,
    required this.product
  });

  final Product product ;

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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomApparPage()));
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
                
            child:  Icon(
              Icons.favorite_outlined,
              size: 35,
              color: product.isFav? Colors.red.shade900 : Colors.white,
            ),
          ),
      
        ],
      ),
    );
  }
}