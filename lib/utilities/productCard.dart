import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';

class productCard extends StatelessWidget {

  const productCard({
    super.key,
    required this.product
  });

  final Product product ;

  @override
  Widget build(BuildContext context) {

    return Container(

      width: 300,
      height: 300,

      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(20)
      ),

      child: Column(

        children: [

          Image.asset(
            product.imagePath,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 10,),

          Text(
            product.title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w900,
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 8 , right: 8),
            child: Row(
            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [
            
                Text(
                  '${product.price} SAR' ,
                  style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
                ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: List.generate(

                    product.itemColors.length,
                     (index) => Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: product.itemColors[index],
                        shape: BoxShape.circle,
                      ),
                     ),
                     
                     
                     )
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}