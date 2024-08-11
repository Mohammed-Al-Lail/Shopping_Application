import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/utilities/productDetailsPageUtilites/addToCartButton.dart';
import 'package:shoping_center_project/utilities/productDetailsPageUtilites/productDescreption.dart';
import 'package:shoping_center_project/utilities/productDetailsPageUtilites/productdetailsScreenAppBar.dart';

// ignore: camel_case_types
class productDetailPage extends StatefulWidget {

   const productDetailPage({ // constructor

    super.key,
    required this.product, 
    
    });

      final Product product ; // this class required a product 

  @override
  State<productDetailPage> createState() => _productDetailPageState();
}

class _productDetailPageState extends State<productDetailPage> {
 
      int colorIndex=0 ; 

  @override
  Widget build(BuildContext context) {

    return   Scaffold(


      body: SafeArea(

        child: Column(
        
          children: [

            // for the appbar
            productdetailsScreenAppBar(product: widget.product,),
            const SizedBox(height: 10,),

            // for product image
            Image.asset(

              widget.product.imagePath,
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
              productDescreption(product: widget.product),
              const SizedBox(height: 20,),

              // for product price and product colors
              Padding(
              padding: const EdgeInsets.only(left: 8 , right: 8),
              child: Row(
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                children: [
              
                  Text(
                    '\$${widget.product.price} SAR' ,
                    style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
                  ),
              
                  Row( // This row is for the product colors container 
                
                    children: List.generate( // we will generate a list
        
                      widget.product.itemColors.length, // The length of the index parameter
        
                       (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.product.indexOfChoosenColor=index ; // change the value of color index
                          });
                        },
                         child: Container( // return container as (index) times
                          width: index == widget.product.indexOfChoosenColor ? 50 : 35,
                          height: index == widget.product.indexOfChoosenColor ? 50 : 35,
                          margin: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            color: widget.product.itemColors[index],
                            shape: BoxShape.circle,
                         
                            border: Border.all(
                              color: index == widget.product.indexOfChoosenColor ? Colors.black : Colors.transparent ,
                              width: index == widget.product.indexOfChoosenColor ? 4 : 0,
                            ),
                          ),
                         ),
                       ),
                       
                       
                       )
                  ),
                ],
              ),
            ),

           const SizedBox(height: 100,),

           //for add the product to the cart
            addTOCartButton(product: widget.product,),


              
              

            
          ],
        
          
        ),
      ),
    );
  }
}