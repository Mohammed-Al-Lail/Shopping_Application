import 'package:flutter/material.dart';

class massegDialog extends StatelessWidget {

  const massegDialog({
    
    super.key,
    required this.text,
    required this.backgroundColor,
    
    });

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {

    return  Opacity(
            opacity: 0.8,
             child: AlertDialog(
             
              backgroundColor: backgroundColor,
              alignment: Alignment.topRight,
              
             
             
              content:Row(
              
                mainAxisAlignment: MainAxisAlignment.center,
              
                children: [
              
                  Text(
                    text,
                    style:const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black
                    ),
              
                  ),

                ],
              ),

             
             ),
           );
  }
}