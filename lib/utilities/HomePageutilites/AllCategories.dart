import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/categories.dart';
import 'package:shoping_center_project/screens/categoriesScreen/identicalCategoriesPage.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      height: 110,
       width: double.infinity,
       
      child: ListView.separated( //ListView.separated make a space between each item and another
        
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
      
        itemBuilder: (context , index){
      
          return Column(
      
            children: [
      
              Padding(
                padding: const EdgeInsets.only(left: 8 , right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: (){ // go to the identical category page depending on the category
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> identicalCategoriesPage(categorie: Categories[index])));
                    },
                    child: Image.asset(
                      Categories[index].imagePath, // go to categorie class to understand
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70, 
                      
                      ),
                  ),
                ),
              ),
                const SizedBox(height: 10,),
      
                Text(
                  Categories[index].categoryTitle, // go to categorie class to understand
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight:  FontWeight.bold,
                  ),
                ),
                
            ],
      
          );
        }, // End of item bulder 
      
        separatorBuilder: (context, index) { // this method determin the seperation between each widget
          return const SizedBox(width: 20,);
        },
      ),
    );


  }
}