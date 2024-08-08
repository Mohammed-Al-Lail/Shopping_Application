import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/utilities/productDetailsPageUtilites/addToCartButton.dart';
import 'package:shoping_center_project/utilities/productDetailsPageUtilites/productDescreption.dart';
import 'package:shoping_center_project/utilities/productDetailsPageUtilites/productdetailsScreenAppBar.dart';

// ignore: camel_case_types
class productDetailPage extends StatelessWidget {

  const productDetailPage({ // constructor

    super.key,
    required this.product, 
    
    });

final Product product ; // this class required a product 

  @override
  Widget build(BuildContext context) {

    return   Scaffold(


      body: SafeArea(

        child: Column(
        
          children: [

            // for the appbar
            productdetailsScreenAppBar(product: product,),
            const SizedBox(height: 10,),

            // for product image
            Image.asset(

              product.imagePath,
              height: 250,
              width: 450,

              ),
              const SizedBox(height: 20,),

              // for Descreption text
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.start ,
                  
                  children: [
                
                    Text(
                      "Descreption",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),

              // for the product descreption
              productDescreption(product: product),
              const SizedBox(height: 20,),

              // for product price and product colors
              Padding(
              padding: const EdgeInsets.only(left: 8 , right: 8),
              child: Row(
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                children: [
              
                  Text(
                    '\$${product.price} SAR' ,
                    style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
                  ),
              
                  Row( // This row is for the product colors container 
                
                    children: List.generate( // we will generate a list
        
                      product.itemColors.length, // The length of the index parameter
        
                       (index) => Container( // return container as (index) times
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: product.itemColors[index],
                          shape: BoxShape.circle,
                        ),
                       ),
                       
                       
                       )
                  ),
                ],
              ),
            ),

           const SizedBox(height: 100,),

           //for add the product to the cart
            addTOCartButton(product: product,),


              
              

            
          ],
        
          
        ),
      ),
    );
  }
}