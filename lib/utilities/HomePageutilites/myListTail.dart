import 'package:flutter/material.dart';

class myListTail extends StatelessWidget {
  const myListTail({
    
    super.key,
    required this.text,
    required this.icon,
    required this.funnction,
   // required this.function,
    });

  final String text;
  final IconData icon ;
  final Function()? funnction ;
  //final void Function()? function ;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left:8 , right: 8 , bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
        children: [
          
            Text(
              text,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400
              ),
            ),
      
          IconButton(
            onPressed: funnction,
             icon: Icon(
            icon ,
            size: 45,
            color: Colors.grey,
          ),
             )
        ],
      ),
    );
  }
}