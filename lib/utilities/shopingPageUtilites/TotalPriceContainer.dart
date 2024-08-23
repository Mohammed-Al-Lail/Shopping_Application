import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_center_project/Providers/productProvider.dart';
import 'package:shoping_center_project/screens/PayScreens/PayScreen.dart';

class TotalPriceContainer extends StatefulWidget {
  const TotalPriceContainer({super.key});

  @override
  State<TotalPriceContainer> createState() => _TotalPriceContainerState();
}

class _TotalPriceContainerState extends State<TotalPriceContainer> {


  int totalShoppingPrice(){ // method to get the total price

    int totalPrice= Provider.of<productProvider>(context,listen: true).totalPrice ;
    
    return totalPrice;
    
  }


 
  
  @override
  Widget build(BuildContext context) {


    return Container(
        
          width: double.infinity,
          height: 78,
          color: Colors.green.shade800.withOpacity(0.8),
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

             const SizedBox(width: 1,),
              Text(
            "Total Price: \$${totalShoppingPrice()} SAR",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.white
            ),
          ) ,

          // for Pay Now button
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PayScreen()));
            },

            child: Container(
            
            width: 130, 
            height: 50,
            margin: const EdgeInsets.only(right: 3),

            decoration: BoxDecoration(
              //shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade900,
            ),

            child: const Center(
              child: Text(
                "Pay Now",
                style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            
            ),
          ),

          
            ],
          ),
        );
  }
}