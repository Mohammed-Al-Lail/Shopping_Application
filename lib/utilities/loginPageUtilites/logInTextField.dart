import 'package:flutter/material.dart';

class logInTextField extends StatelessWidget {
  const logInTextField({

    super.key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    required this.obscureText,
    
    });

  final TextEditingController controller ;
  final String hintText;
  final IconData? prefixIcon ; // not necessary to provid the icon it could be = null
  final bool obscureText ;

  @override
  Widget build(BuildContext context) {

    return  Padding(
            padding: const EdgeInsets.all(15.0),

            child: TextField(
              controller: controller ,
              obscureText: obscureText,

              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(prefixIcon, size: 40, color: Colors.grey[700],),
                hintText: hintText,
                hintStyle: const TextStyle( fontSize: 18, color: Colors.black38),
                border: OutlineInputBorder(  borderRadius: BorderRadius.circular(12),),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.blue.shade900,
                    width: 2
                  ),
                  
                )
            
            
              ),
              
            
            ),
          );


  }
}