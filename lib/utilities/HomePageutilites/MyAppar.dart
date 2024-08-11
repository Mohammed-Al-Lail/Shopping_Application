import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppar extends StatelessWidget {
  const MyAppar({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
      
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
      
        children: [
      
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer(); // this is how to open the drawer
            },
            child: Container(
              width: 50,
              height: 50,
                  
              decoration: const BoxDecoration(
                  
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
                  
              child: const Icon(
                Icons.menu,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
      
          Container(
            width: 50,
            height: 50,
      
            decoration: const BoxDecoration(
      
              color: Colors.deepPurple,
              shape: BoxShape.circle,
            ),
                
            child: const Icon(
              Icons.notifications,
              size: 35,
              color: Colors.white,
            ),
          ),
      
        ],
      ),
    );
  }
}