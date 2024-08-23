import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_center_project/Providers/productProvider.dart';
import 'package:shoping_center_project/screens/mainScreens/FavoritePage.dart';
import 'package:shoping_center_project/screens/mainScreens/HomePage.dart';
import 'package:shoping_center_project/screens/mainScreens/ShoppingPage.dart';
import 'package:shoping_center_project/screens/mainScreens/UsersPage.dart';
import 'package:shoping_center_project/screens/mainScreens/profilePage.dart';
import 'package:shoping_center_project/classes/Person.dart';

class BottomApparPage extends StatefulWidget {
  const BottomApparPage({super.key});

  @override
  State<BottomApparPage> createState() => _BottomApparState();
}

class _BottomApparState extends State<BottomApparPage> {

int _pageIndex= 2 ; // the defult page ( at the begining the defult page will be the home page)
List <Widget> screensList = [
  const usersPage(),
  const FavoritePage(),
  const HomePage(),
  const ShopingPage(),
  profilePage(person: personsList[0],),
];



  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      
      body: screensList[_pageIndex], // we will move between the pages deppending on the index

    // for Home icon
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){

          setState(() {
            _pageIndex =2;
          });
        },

           backgroundColor: Colors.deepPurple,
           shape:const CircleBorder(),
           elevation: 20,

        child:  Icon(
            Icons.home,
            color: _pageIndex==2 ? Colors.red[200] : Colors.grey.shade200,
            size: 35,
           ),
           

        ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // the location of the flotainAction button

      
      bottomNavigationBar: BottomAppBar(

        height: 60,
        color: Colors.deepPurple,
        clipBehavior: Clip.antiAliasWithSaveLayer,

        child:  Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,


          children: [

          // for people icon
            IconButton(
              onPressed: (){

                setState(() {

                _pageIndex =0;
            });
              },

               icon:  Icon(

              Icons.people_alt_outlined,
              color: _pageIndex==0 ? Colors.red[200] : Colors.grey.shade200,
              size: 30,

               )
               
               ),

            // for heart icon
               IconButton(
              onPressed: (){
                setState(() {

                _pageIndex =1;
            });
              },

               icon:  Icon(

              Icons.favorite_outline,
              color: _pageIndex==1 ? Colors.red[200] : Colors.grey.shade200,
              size: 30,

               )
               
               ),

                const SizedBox(width: 20,),

              // for Shopping cart icon
               Stack( // i used stack so we can place the childrens above each other

                 children: [

                  IconButton( // shoppin cart 
                   onPressed: (){
                    setState(() {
                   _pageIndex =3;
                        });
                             },
                    icon:  Icon(
                          Icons.shopping_cart_outlined,
                          color: _pageIndex==3 ? Colors.red[200] : Colors.grey.shade200,
                          size: 30,
                 )
                 
                 ),

                 Consumer<productProvider>(
                   builder: (context, myProvider , _) {

                     return Visibility( // using Visibility widget to hide the container that display the number of items on the shopping cart {if it was empty}
                      visible: myProvider.shoppingCartProductsList.isNotEmpty ? true : false, // if the list was not empty show the numer of items , else not
                     
                       child: Positioned( // with Positioned widget we can controls where a child of a [Stack] is positioned.
                        right: 1,
                        
                        
                        child: Container( // the container which will have the number of items on the shopping cart
                       
                          width: 20,
                          height: 20,
                       
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red.withOpacity(0.9)
                          ),
                       
                          child: Center(
                            child: Text(
                              myProvider.shoppingCartProductsList.length.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                       
                       
                        
                        ),
                     );
                   }
                 ),
                 ],
               ),


              // for person icon
               IconButton(
              onPressed: (){
                setState(() {

                _pageIndex =4;
            });
              },

               icon:  Icon(

              Icons.person_2_outlined,
              color: _pageIndex==4 ? Colors.red[200] : Colors.grey.shade200,
              size: 30,

               )
               
               ),

           
          ],
        ),

      ),



    );
  }
}