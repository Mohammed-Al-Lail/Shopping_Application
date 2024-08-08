import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/screens/productdetailsscreen/productDetailsPage.dart';

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
        
            Row( // This row will have the small favorite container
              mainAxisAlignment: MainAxisAlignment.end, // make the favorite button at the right
              children: [
        
                ClipRRect( // to use borderRadius parameter
                  borderRadius: BorderRadius.circular(15),
        
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4,right: 8),
        
                    child: GestureDetector(
                      onTap: tagleFavorite ,
        
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.orange.shade300,
                        
                        child:  Icon(
                          Icons.favorite_outlined,
                          color: widget.product.isFav ? Colors.red.shade800 : Colors.white, // if the product was favorite , make the color red , else white
                          size: 30,
                        ),
                              
                      ),
                    ),
                  ),
                ),
              ],
            ), // End of small favorite container
        
        
            Image.asset(
              widget.product.imagePath,
              width: 250,
              height: 230,
              //fit: BoxFit.cover,
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