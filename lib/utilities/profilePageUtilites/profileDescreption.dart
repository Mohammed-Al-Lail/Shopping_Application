import 'package:flutter/material.dart';

class profileDescreption extends StatelessWidget {

  const profileDescreption(this.text,{super.key});

final String text ;
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        width: double.infinity,
        height: 250,
      
        decoration:  BoxDecoration(
          color: Colors.grey.shade300,
          border: Border.all(

            color: Colors.deepPurple.shade400,
            width: 5
            
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(26),
            bottomRight: Radius.circular(26)
          ),
        ),

        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade800
              ),
            ),
          ),
        ),
      
      
      ),
    );
  }
}