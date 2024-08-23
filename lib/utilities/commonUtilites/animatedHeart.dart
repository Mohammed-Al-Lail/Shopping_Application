import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_center_project/Providers/productProvider.dart';
import 'package:shoping_center_project/classes/Product.dart';

class AnimatedHeart extends StatefulWidget {
  const AnimatedHeart({super.key, required this.product});



  final Product product;

  @override
  State<AnimatedHeart> createState() => _AnimatedHeartState();
}

// use the TickerProviderStateMixin (mixin) in order to use AnimationController
class _AnimatedHeartState extends State<AnimatedHeart> with TickerProviderStateMixin  {


  late AnimationController animationController; // will be initilized later on the initState method

  // {tween} from (between)  it will take list of tween sequene
  late Animation sizeController ; // will be initilized later on the initState method

@override
  void initState() { // run befor build method
    
    animationController =AnimationController(
      duration: const Duration(milliseconds: 500), // the duration of the animation
      vsync: this // refers to this class using (TickerProviderStateMixin)
    );

    sizeController = TweenSequence<double>( // take a list of TweenSequenceItem (type = douple)
      
      [
        // The order of animations....

        TweenSequenceItem(
          tween: Tween(begin:25 , end: 33 ),
          weight: 50
          ),

          TweenSequenceItem(
          tween: Tween(begin:33 , end: 25 ),
          weight: 50
          ),
          

      ],

      // .animate(animationController) means the (animationControlle) will be responsable for this sequense
      ).animate(animationController);  


    super.initState();
  }


 // method to toggle the isFav statues for the product and add it to the favorit list
   void tagleFavorite(){

    setState(() {
      animationController.reset(); // to reset the animation controller
      animationController.forward(); // and then move forward on the sequense that we have provide again (on size controller)
      widget.product.isFav = !widget.product.isFav ;
    });

// use the method on the provider and dont forget tm make {listen = false}
    Provider.of<productProvider>(context, listen: false).addToFavoriteList(widget.product);

   

  } // End of the method


  @override
  Widget build(BuildContext context) {


    return AnimatedBuilder( // we have to wrap the widget with animated builder
      animation: animationController, // the controller will be our controller (animationController) 
      builder: (context , childe) {
    
        return IconButton(
          
          onPressed: tagleFavorite,
        
           icon: Icon(
            Icons.favorite_outlined,
            color: widget.product.isFav ? Colors.red.shade800 : Colors.white, // if the product was favorite , make the color red , else white
            size: sizeController.value, // take the value of the size controller
          ),
                
        );
      }
    );




  }
}



