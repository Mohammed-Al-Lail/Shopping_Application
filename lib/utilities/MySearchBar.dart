import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      
        height: 60,
        width: double.infinity,
        
        decoration: BoxDecoration(
      
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
      
        ),
      
        child:  Row(
      
          children: [
      
            const SizedBox(width: 10,),
      
            Icon(
              Icons.search,
              size: 30,
              color: Colors.grey[600],
            ),
      
           const SizedBox(width: 20,),
      
             Flexible( // Flexible widget provide the flexibility of the widget to change its size , so the size can shrink
              flex: 4,
              child: TextField(
                
                decoration: InputDecoration(
                  
                  hintText: "Search...",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[600]
                  ),
                  border: InputBorder.none // this to remove the default line in the text field
                  
                ),
              ),
            ),

            const Expanded(child: SizedBox() ),

            Container(
              width: 2,
              height: double.maxFinite,
              color: Colors.grey[600],
            ),

            const SizedBox(width: 10,),

            Icon(
              Icons.tune,
              size: 25,
              color: Colors.grey[600],
            ),



            const SizedBox(width: 20,)


      
      
          ],
        ),
          
        
      ),
    );
  }
}