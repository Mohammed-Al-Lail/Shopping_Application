import 'package:flutter/material.dart';
import 'package:shoping_center_project/utilities/AdvSlider.dart';
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
            


        
        
          ],
        
        
        ),
      ),


    

    );
  }
}