import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shoping_center_project/BottomApparPage.dart';
import 'package:shoping_center_project/Providers/productProvider.dart';
import 'package:shoping_center_project/utilities/shopingPageUtilites/TotalPriceContainer.dart';
import 'package:shoping_center_project/utilities/shopingPageUtilites/shopingCartCard.dart';

class ShopingPage extends StatefulWidget {
  const ShopingPage({super.key});

  @override
  State<ShopingPage> createState() => _ShopingPageState();
}

class _ShopingPageState extends State<ShopingPage> {


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


    body: Provider.of<productProvider>(context, listen: true).shoppingCartProductsList.isEmpty? // the body will depend on if there was items on the shooping cart list or not
    
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
    )     
    
    :  // The second option....

    Consumer<productProvider>( // from provider package 
      builder: (context, myProvider, _ ) {

        return Column( // if the list was not empty
        
          children: [
        
            const SizedBox(height: 30,),
        
            Expanded(
              child: ListView.separated(
              
                itemCount: myProvider.shoppingCartProductsList.length,
              
                itemBuilder: (context, index) {
              
                  return shoppingCartCard(product: myProvider.shoppingCartProductsList[index]);
                   
                },
                separatorBuilder: (context, index) => const SizedBox(height: 20,),
              ),
            ),
        
           const SizedBox(height: 20,),
        
        
          // The Total price container
            const TotalPriceContainer()
        
            
            
        
          ],
        );
      }
    ),

    );

  }
}