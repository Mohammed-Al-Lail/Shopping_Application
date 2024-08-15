import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/screens/productdetailsScreen/productDetailsPage.dart';

class shoppingCartCard extends StatelessWidget {

  const shoppingCartCard({ // constructor
    
    super.key,
    required this.product,
    
    });

    final Product product;




  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () { // when clickin on the card
        Navigator.push(context, MaterialPageRoute(builder: (context)=> productDetailPage(product: product)));
      },


      child: Dismissible( // this widget enable us to drag another widget in a choosen directoin

        key: ValueKey(product), // should be uniqe key value (each product has uniqe value)
        direction: DismissDirection.endToStart, // drag from left to right

        background: Container(), // (the left background) , we can't leave it empty since we used the (secondaryBackground) , because of that we put an empty container {since we disaple draging from the left , we will not use it}

        secondaryBackground: Container( // (the right background)

          width: MediaQuery.of(context).size.width * 0.2, // only 20 % from the screen size (depending on the devise screen)
          //padding: EdgeInsets.only(right: 20),
          color: Colors.red,
          child: const Center(child: Icon(Icons.delete , size: 40, color: Colors.white,)),

        ),

        onDismissed: (direction) { // function
          shoppingCartProductsList.remove(product);
          
        },

        child: Container(
        
         
          margin: const EdgeInsets.all(10),
        
          decoration: BoxDecoration(
        
            border: Border.all(
              color: Colors.white,
              width: 4,
            )
            
          ),
        
          child: Row(
            
        
            children: [
        
              
        
              Image.asset(
                product.imagePath,
                height: 150,
                width: 100,
                fit: BoxFit.cover,
              ),
        
              const SizedBox(width: 15,),
        
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
        
                children: [
        
                  
        
                  Text(
                product.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
        
              const SizedBox(height: 10,),
        
              Text(
                "Quantity: ${product.quantity}",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
        
              const SizedBox(height: 10,),
        
              // for the choosen color
               Row(
        
                children: [
        
                   const Text(
                    "Color: ",
                    style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                   ),
        
                   const SizedBox(width: 2,),
                  
                   Container(
                    width: 23,
                    height:23,
        
                    decoration: BoxDecoration(
                      color: product.itemColors[product.indexOfChoosenColor],
                      shape: BoxShape.circle
                    ),
        
        
                   ),
                ],
              ),
        
              Text(
                "Price: \$${product.price} SAR",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
        
                ],
              ),
        
            ],
          ),
        
        ),
      ),
    );

  }
}