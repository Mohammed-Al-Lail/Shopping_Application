import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilePageinfo extends StatelessWidget {

  const profilePageinfo({ //constructor

    super.key,
    required this.infoTitle,
    required this.info,
    
    });

     final String infoTitle;
     final String info;

  @override
  Widget build(BuildContext context) {
    return Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 5,),
                 child:  Text(
                   infoTitle,
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w900,
                     color: Colors.grey.shade700
                   ),
                 ),
               ),
               const SizedBox(width: 10,),
            
               Text(
                 info,
                 style: GoogleFonts.abrilFatface(
                   fontSize: 25,
                   fontWeight: FontWeight.w900,
                 ),
               ),
             ],
         );
  }
}