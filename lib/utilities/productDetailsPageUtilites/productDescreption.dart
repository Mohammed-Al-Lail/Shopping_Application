import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';

class productDescreption extends StatelessWidget {

  const productDescreption({ // constructor
    super.key,
    required this.product
    });

  final Product product ;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(left: 3 , right: 3),

      child: Container(
                  width: double.infinity,
                  height: 120,
      
                  decoration: BoxDecoration(
                    border: Border.all( // the border of the container
                      color: Colors.grey.shade700,
                      width:2
                    )
                  ),
      
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
      
                    child: Text(
                      product.discreption,
                      textAlign: TextAlign.center, // The alignment of the text
                      
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    
                      
                    ),
                  ),
                ),
    );
  }
}