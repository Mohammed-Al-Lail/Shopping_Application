import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';


class addTOCartButton extends StatefulWidget {

  const addTOCartButton({ // constructor

    super.key,
    required this.product,
    
    });

  final Product product ;

  @override
  State<addTOCartButton> createState() => _addTOCartButtonState();
}

class _addTOCartButtonState extends State<addTOCartButton> {



  void decrease(){ // method to decreas the quantity

    if(widget.product.quantity>1){
      setState(() {
        widget.product.quantity-- ;
      });
    }
  }

  void increase(){
    
    if(widget.product.quantity<10){
      setState(() {
       widget.product.quantity ++;
      });
    }
  }


// method to handle adding new product button
  void addToSoppingCart(){ 

    if( !shoppingCartProductsList.contains(widget.product)){

      shoppingCartProductsList.add(widget.product);

      // show snackbar
      ScaffoldMessenger.of(context).showSnackBar(

                   SnackBar(
                  content: const SizedBox(
                    height: 30,

                    child: Center(
                      
                      child: Text(
                        "added successfuly",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                        ),
                        ),
                    ),
                  ),

                    backgroundColor: Colors.green.shade900,
                    duration: const Duration(seconds: 2),
                    
                  ),
                  );
                }

    else{

      // show snackbar
      ScaffoldMessenger.of(context).showSnackBar(

                   SnackBar(
                  content: const SizedBox(
                    height: 30,

                    child: Center(
                      
                      child: Text(
                        "The product Already on the cart !!",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                        ),
                        ),
                    ),
                  ),

                    backgroundColor: Colors.red.shade900,
                    duration: const Duration(seconds: 2),
                    
                  ),
                  );


    }

  }  // End of addToSoppingCart() method


  @override
  Widget build(BuildContext context) {

    return Container(

      height: 70,
      width: 405,

      decoration:  BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10)
        
      ),

      child: Row(

        children: [

          // controllin the quantity container
          Container( 
            width: 150, 
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 10),

            decoration: BoxDecoration(
              border: Border.all(color: Colors.white , width: 2),
              borderRadius: BorderRadius.circular(20)

            ),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                // minus sign
          IconButton(
            onPressed: decrease,
             icon: const Icon(
              Icons.remove,
              size: 25,
              color: Colors.white,
              
             ),
             ),

             //product quantity
             Text(
              widget.product.quantity.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white
              ),
             ),

             //plus sign
             IconButton(
            onPressed: increase,
             icon: const Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
              
             ),
             ),
              ],
            ),
          ), // End of controllin the quantity container

             

             // for the total price depending on the quantity 
             Text(
              "\$ ${widget.product.price*widget.product.quantity} SAR",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,color: Colors.grey.shade400,
              ),
             ),

             const Spacer(), // to take the all reamining space 

            // add to cart button
             GestureDetector(
              onTap: addToSoppingCart,
            
               child: Container(
               
                height: 45,
                width: 110,
               
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
               
                child: const Center(
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                    ),
                  ),
                ),
               ),
             ),


             const SizedBox(width: 8,),



             





        ],

      ),
    );
  }
}