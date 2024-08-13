import 'package:flutter/material.dart';

class logInButton extends StatelessWidget {
  const logInButton({
    
    super.key,
    required this.buttonText,
    required this.function
    
    });

    final String buttonText;
    final Function()? function;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
            onTap: function,
             child: Container(
              width: 150,
              height: 50,
              margin: const EdgeInsets.all(5),
             
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(15),
              ),
              
             
              child:  Center(
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ),
             ),
           );
  }
}