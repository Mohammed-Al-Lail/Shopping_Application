import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/screens/productdetailsScreen/productDetailsPage.dart';

class shoppingCartCard extends StatefulWidget {

  const shoppingCartCard({ // constructor
    
    super.key,
    required this.product,
    
    });

    final Product product;

  @override
  State<shoppingCartCard> createState() => _shoppingCartCardState();
}

class _shoppingCartCardState extends State<shoppingCartCard> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () { // when clickin on the card
        Navigator.push(context, MaterialPageRoute(builder: (context)=> productDetailPage(product: widget.product)));
      },


      child: Dismissible( // this widget enable us to drag another widget in a choosen directoin

        key: ValueKey(widget.product), // should be uniqe key value (each product has uniqe value)
        direction: DismissDirection.endToStart, // drag from left to right

        background: Container(), // (the left background) , we can't leave it empty since we used the (secondaryBackground) , because of that we put an empty container {since we disaple draging from the left , we will not use it}

        secondaryBackground: Padding(  // (the right background)
          padding: const EdgeInsets.all(10),
          child: Container( 
          
            width: MediaQuery.of(context).size.width * 0.2, // only 20 % from the screen size (depending on the devise screen)
            //padding: EdgeInsets.only(right: 20),
            color: Colors.red,
            child: const Center(child: Icon(Icons.delete , size: 40, color: Colors.white,)),
          
          ),
        ),

        onDismissed: (direction) { // function
          shoppingCartProductsList.remove(widget.product); // remove the product
          
        },

        child: Container(
        
         
          margin: const EdgeInsets.all(10),
        
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
        
            border: Border.all(
              color: Colors.white,
              width: 4,
            )
            
          ),
        
          child: Row(
           
        
            children: [
        
              Image.asset( // product image
                widget.product.imagePath,
                height: 150,
                width: 100,
                fit: BoxFit.cover,
              ),
        
              const SizedBox(width: 15,),
        
              Column( // for product details
                mainAxisAlignment: MainAxisAlignment.center,
               
                children: [
        
                  
        
                  Text(
                widget.product.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
        
              const SizedBox(height: 2,),
              

              // for the quantity
              Row(
                
                children: [
                  const SizedBox(width: 40,),
                  const Text(
                    "Quantity:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 5,),

                  IconButton( // deacreas button
                    onPressed: (){
                      if(widget.product.quantity>1){
                        setState(() {
                          widget.product.quantity--;
                        });
                      }
                    }, 
                    icon: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink[50],
                      ),
                      child: const Icon(
                        Icons.remove, 
                        size: 20,
                        
                        )
                        ),
                    ),
                    
                    const SizedBox(width: 2,),

                  Text(
                    "${widget.product.quantity}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  
                  const SizedBox(width: 2,),

                  IconButton( //add button
                    onPressed: (){
                      if(widget.product.quantity<10){
                        setState(() {
                          widget.product.quantity++;
                        });
                      }
                    }, 
                    icon: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink[50],
                      ),
                      child: const Icon(
                        Icons.add, 
                        size: 20,
                        
                        )
                        ),
                    ),
                ],
              ),
        
              const SizedBox(height: 5,),
        
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
                      color: widget.product.itemColors[widget.product.indexOfChoosenColor],
                      shape: BoxShape.circle
                    ),
        
        
                   ),
                ],
              ),
              const SizedBox(height: 5,),
        
              Text(
                "Price: \$${widget.product.price*widget.product.quantity} SAR",
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