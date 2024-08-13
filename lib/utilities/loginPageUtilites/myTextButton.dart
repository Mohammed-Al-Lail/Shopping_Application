import 'package:flutter/material.dart';

class myTextButton extends StatelessWidget {
  const myTextButton({
    
    super.key,
    required this.message,
    required this.textButtonMessage,
    required this.function,
    
    });

  final String message ;
  final String textButtonMessage;
  final Function()? function ;

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        
                 Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(width: 2,),
               
        
                TextButton(
                  onPressed: function,
                   child: Text(
                    textButtonMessage,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue.shade400,
                    ),
                    ),
                    
                  ),
              ],
             );
  }
}