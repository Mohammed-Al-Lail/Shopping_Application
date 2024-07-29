import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoping_center_project/utilities/AdvSlider.dart';
import 'package:shoping_center_project/utilities/AllCategories.dart';
import 'package:shoping_center_project/utilities/MySearchBar.dart';
import 'package:shoping_center_project/utilities/myAppar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.deepPurple[100],
      
      body:  SafeArea(

        child: Column(
        
          children: [
            
            // for my appar
            const MyAppar(),
            const SizedBox(height: 10,),

            // for my Search bar
            const MySearchBar(),
            const SizedBox(height: 10,),

            // for ADV slider
            AdvSlider(),
            const SizedBox(height: 10,),

            // for categories
            const AllCategories(),
            
            
            // Special For you + See all 
            Padding(
              padding: const EdgeInsets.only(left: 8 ,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              
                  const Text(
                    "Special For you",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
              
                  Text(
                    "See all ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[100],
                    ),
                  ),
                ],
              ),
            ),

            
            


        
        const Expanded(child: SizedBox()),
          ],
        
        
        ),
      ),


    

    );
  }
}