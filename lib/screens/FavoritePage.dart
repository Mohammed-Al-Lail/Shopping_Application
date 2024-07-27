import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.deepPurple[100],
      
      appBar: AppBar(
        centerTitle: true,
        title: Text(

          "Favorite Page",

          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
        ),
      ),

      backgroundColor: Colors.deepPurple,
      toolbarHeight: 100,
    ),


    body: Column(

      children: [

        SizedBox(height: 30,),
        Center(
          child: Icon(
            Icons.fmd_good,
            size: 50,
            color: Colors.red,
          ),
        )

      ],
    ),

    );
  }
}