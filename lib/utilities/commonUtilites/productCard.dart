import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/screens/productdetailsscreen/productDetailsPage.dart';
import 'package:shoping_center_project/utilities/commonUtilites/animatedHeart.dart';

// ignore: must_be_immutable
class productCard extends StatefulWidget {

   productCard({ // constructor
    super.key,
    required this.product 
  });

  final Product product ; // this class required a product



  @override
  State<productCard> createState() => _productCardState();
}

class _productCardState extends State<productCard> {

  


  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=> productDetailPage(
            product: widget.product)
            )
            );
      },


      child: Container(
      
        width: 300,
        height: 340,
      
        decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(20)
        ),
      
        child: Column(
        
          children: [
        
            Row( // This row will have the small favorite icon button (AnimatedHeart)
              mainAxisAlignment: MainAxisAlignment.end, // make the favorite button at the right
              children: [
                
                Padding( // to use borderRadius parameter
                  padding: const EdgeInsets.only(top: 5 , right: 5),
        
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                  
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.pink.shade200,
                      
                      child:  AnimatedHeart(product: widget.product),
                            
                    ),
                  ),
                ),
              ],
            ), // End of small favorite container

            
        
        
            Hero( // Hero widget to do animation between the pages by using the (tag) if it was identical between two heroes
              tag:widget.product.imagePath , //The identifier for this particular hero. If the tag of this hero matches the tag of a hero on a [PageRoute] that we're navigating to or from, then a hero animation will be triggered.
              child: Image.asset(
                widget.product.imagePath,
                width: 250,
                height: 230,
                //fit: BoxFit.cover,
              ),
            ),
        
        
            Text(
              widget.product.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
      
            const SizedBox(height: 15,),
        
        
            Padding(
              padding: const EdgeInsets.only(left: 8 , right: 8),
              child: Row(
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                children: [
              
                  Text(
                    '\$${widget.product.price} SAR' ,
                    style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                  ),
              
                  Row( // This row is for the product colors container 
                
                    children: List.generate( // we will generate a list
        
                      widget.product.itemColors.length, // The length of the index parameter
        
                       (index) => Container( // return container as (index) times
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(left: 3),
                        decoration: BoxDecoration(
                          color: widget.product.itemColors[index],
                          shape: BoxShape.circle,
                        ),
                       ),
                       
                       
                       )
                  ),
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}