import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDropDownButton extends StatefulWidget {
   MyDropDownButton({
    
    super.key,
    required this.title,
    required this.selectedValue,
    required this.itemsList,
    required this.onChanged,
    
    });


  
  final String title ;
  dynamic selectedValue;
  final List<dynamic> itemsList;
  final void Function(dynamic)? onChanged;
  
  @override
  State<MyDropDownButton> createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {



  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(15.0),

      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade800,
            width: 3
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:5 , right: 20),
          child: Row(
          
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                       Text(
                         widget.title,
                         style: const TextStyle(
                           fontSize: 24,
                           fontWeight: FontWeight.w900,
                           color: Colors.black54
                         ),
                       ),
                      const SizedBox(width: 15,),
          
                      // DropdownButton 
                      DropdownButton<dynamic>(

                         items: widget.itemsList.map((item) => DropdownMenuItem(   // The DropdownButton take a list of (DropdownMenuItem ) because of that we use .map() and then convetr it to a list
                            value: item, // each DropdownMenuItem will have distinct value
                            child: Text(
                              "$item",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),
                              ),
                            )
                          ).toList(), // convert it to list since the DropdownButton take list of DropdownMenuItem
          
                        value: widget.selectedValue, // thus is the value which will be displayed on the screen
                        
                        onChanged: widget.onChanged ,

                        // design
                          dropdownColor: Colors.red.shade100,
                          iconSize: 50,
                          menuMaxHeight: 400,
                      

                         
          
                     
                        ),
                        
                    ],
                  ),
        ),
      ),
    );
  }
}