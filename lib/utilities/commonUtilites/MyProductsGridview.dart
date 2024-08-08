import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Product.dart';
import 'package:shoping_center_project/utilities/commonUtilites/productCard.dart';

class MyProductsGridview extends StatelessWidget {

  const MyProductsGridview({ // constructor
    
    super.key,
    required this.itemsList // take a list of products

    });

  final List<Product> itemsList ; // take a list of products

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
                
                physics: const NeverScrollableScrollPhysics(), // This widget will prevent scrolling throuh the gridview itself
                shrinkWrap: true, //  When shrinkWrap is set to true, the GridView will only take up the necessary space to display its children, rather than expanding to fill the entire available space.

                gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // The number of items in each colunm
                  childAspectRatio: 0.55, // specifies the ratio of the width to the height of each child widget.
                  crossAxisSpacing: 20, // The horizontal distance between each card
                  mainAxisSpacing: 20   // The vertical distance between each card
                  ), 

                itemCount: itemsList.length, // The length of the index parameter
                 itemBuilder: (context, index) {
                   return Padding(
                     padding: const EdgeInsets.only(left: 8 , right: 8),
                     child: productCard(product: itemsList[index]),
                   );
                 },
                 );
  }
}