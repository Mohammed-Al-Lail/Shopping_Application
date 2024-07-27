import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdvSlider extends StatelessWidget {

    AdvSlider({super.key});

  final _pageController = PageController(); // we will use it track the page in pageViwe widget

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.bottomCenter, // The Alignment of the widgets in the stack (they will be placed based on their order in the children of the stack)

      children: [

       Padding(
         padding: const EdgeInsets.all(8.0),

         child: SizedBox(
          height: 220,
          width: double.infinity,
         
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),

            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: const ClampingScrollPhysics(), //Creates scroll physics that prevent the scroll offset from exceeding the bounds of the content.
         
              children: [
                Image.asset(
         
                  "lib/images/adv1.jpg",
                  fit: BoxFit.cover,
                ),
         
                Image.asset(
         
                  "lib/images/adv2.jpg",
                  fit: BoxFit.cover,
                ),

                Image.asset(
         
                  "lib/images/adv3.png",
                  fit: BoxFit.cover,
                ),
              ],
         
            ),
            
            ),
         ),
       ),

       SmoothPageIndicator( // Using ( SmoothPageIndicator ) Packge to now in which page we are
        controller: _pageController, // as same as pageViwe controller
         count: 3, // number of pages
         effect: SlideEffect( // transition effect
          activeDotColor: Theme.of(context).primaryColor, // The color of the active page
          dotColor: Colors.grey, // The color of an active pages
          
            ),
            
         ),
        
      ], // End of stack

    );

  }
}