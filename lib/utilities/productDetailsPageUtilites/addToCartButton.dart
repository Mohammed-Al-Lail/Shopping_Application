import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoping_center_project/classes/Product.dart';

class addTOCartButton extends StatefulWidget {
  const addTOCartButton({

    super.key,
    required this.product,
    
    });

  final Product product ;

  @override
  State<addTOCartButton> createState() => _addTOCartButtonState();
}

class _addTOCartButtonState extends State<addTOCartButton> {



  void decrease(){ // method to decreas the quantity

    if(widget.product.quantity>0){
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


  void addToSoppingCart(){

    if(!shoppingCartProductsList.contains(widget.product)){

      shoppingCartProductsList.add(widget.product);
    }


  }

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 65,
      width: 400,

      decoration: const BoxDecoration(
        color: Colors.black,
      ),

      child: Row(

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

             const SizedBox(width: 10,),

             //product quantity
             Text(
              widget.product.quantity.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white
              ),
             ),

             const SizedBox(width: 10,),

             //plus sign
             IconButton(
            onPressed: increase,
             icon: const Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
              
             ),
             ),

             

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