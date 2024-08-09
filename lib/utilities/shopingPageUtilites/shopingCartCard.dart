import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/screens/productdetailsScreen/productDetailsPage.dart';

class shoppingCartCard extends StatelessWidget {

  const shoppingCartCard({ // constructor
    
    super.key,
    required this.product,
    
    });

    final Product product;




  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> productDetailPage(product: product)));
      },
      child: Container(
      
        height: 150,
        width: 350,
        margin: const EdgeInsets.all(10),
      
        decoration: BoxDecoration(
      
          border: Border.all(
            color: Colors.white,
            width: 3,
          )
          
        ),
      
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // to make the remove icon at the top of the container
      
          children: [
      
            
      
            Image.asset(
              product.imagePath,
              height: 150,
              width: 100,
              fit: BoxFit.cover,
            ),
      
            const SizedBox(width: 15,),
      
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
      
              children: [
      
                
      
                Text(
              product.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
      
            const SizedBox(height: 10,),
      
            Text(
              "Quantity: ${product.quantity}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
      
            const SizedBox(height: 10,),
      
            Text(
              "Price: \$${product.price} SAR",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
      
              ],
            ),
      
            const Spacer(),
      
            IconButton(
                      onPressed: (){
                        shoppingCartProductsList.remove(product);
                      },
                       icon: const Icon(
                        Icons.close,size: 25,
                        color: Colors.red,
                       ),
                       )
      
          
      
      
          ],
        ),
      
      ),
    );

  }
}