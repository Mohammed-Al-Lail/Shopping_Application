import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/utilities/productDetailsPageUtilites/massegeDialog.dart';

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


  void addToSoppingCart(){ // method to handle adding new product button

    if( !shoppingCartProductsList.contains(widget.product)){

      shoppingCartProductsList.add(widget.product);

      showDialog( // show message show the sucsess of adding new product
        context: context,
         builder: (ctx) {

          Future.delayed(const Duration(seconds: 1), () { // Close the dialog after 1 seconds
              Navigator.of(context).pop();
            }
            );

           return massegDialog(
            text: "added Successfully ! ",
             backgroundColor: Colors.green.shade300,
             );
         },

         ); // end of show dialog

    } // end of the first if(the product was added successfully)

    else{

      showDialog( // show message show the sucsess of adding new product
        context: context,
         builder: (ctx) {

          Future.delayed(const Duration(seconds: 1), () { // Close the dialog after  seconds
              Navigator.of(context).pop();
            }
            );

           return massegDialog(
            text: "The product is on the Cart !! ",
             backgroundColor: Colors.red.shade300,
             );
         },

         ); // end of show dialog


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