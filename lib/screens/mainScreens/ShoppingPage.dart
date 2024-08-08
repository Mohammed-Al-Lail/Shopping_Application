import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping_center_project/BottomApparPage.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/utilities/shopingPageUtilites/shopingCartCard.dart';

class ShopingPage extends StatelessWidget {
  const ShopingPage({super.key});


  int totalShoppingPrice(){ // method to get the total price
    int totalPrice=0;

    for(int i=0 ; i<shoppingCartProductsList.length ; i++){
      totalPrice+=(shoppingCartProductsList[i].price * shoppingCartProductsList[i].quantity);
    }
    return totalPrice;
  }


  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      backgroundColor: Colors.deepPurple[100], 

      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(

          "Your Cart",

          style: GoogleFonts.aboreto(
              fontSize: 50,
              fontWeight: FontWeight.bold,
        ),
      ),

      backgroundColor: Colors.deepPurple,
      toolbarHeight: 60,
    ),


    body: shoppingCartProductsList.isEmpty? // the body will depend on if there was items on the shooping cart list or not
    
     Column( // if the list was empty
    
      children: [
        const SizedBox(height: 250,),

         const Text( 
          " No items was added to the shopping Cart." ,
          textAlign: TextAlign.center,
        
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.black54
          ),
        
          ),

          TextButton(
            onPressed: (){ // go to the home page {the defult page of bottom appbar page}
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomApparPage()));
            },

             child: const Text( 
                      "Add new Items now!!",
                      textAlign: TextAlign.center,
        
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                        ),
                    ),
                    
        ),
      ],
    )  :   
    
    
    Column( // if the list was not empty

      children: [

        const SizedBox(height: 30,),

        Expanded(
          child: ListView.separated(
          
            itemCount: shoppingCartProductsList.length,
          
            itemBuilder: (context, index) {
          
              return shoppingCartCard(product: shoppingCartProductsList[index]);
               
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20,),
          ),
        ),

       const SizedBox(height: 20,),

        Container(
        
          width: double.infinity,
          height: 66,
          color: Colors.red.shade800,
        
          child: Text(
            "Total Price: \$${ totalShoppingPrice()} SAR",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.white
            ),
          ) ,
        ),

        
        

      ],
    ),

    );

  }
}