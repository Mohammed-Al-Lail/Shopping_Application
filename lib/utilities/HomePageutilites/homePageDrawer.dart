import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoping_center_project/classes/Person.dart';
import 'package:shoping_center_project/screens/LoginScreen/logIn.dart';
import 'package:shoping_center_project/screens/mainScreens/profilePage.dart';
import 'package:shoping_center_project/utilities/HomePageutilites/myListTail.dart';

class homePageDrawer extends StatelessWidget {
  const homePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      // MediaQuery will determine the width and hegit based on the devise screen type 
      height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width-100,

      child: Drawer(

      
        child: ListView( // a list of the items that will be in the drawer
      
          children:   [
      
            const DrawerHeader(
             
              child: Text(
                "Menue",
                style: TextStyle(fontSize: 26,fontWeight: FontWeight.w900),
              ),
              ),
      
              // ListTile(
              //   title: Text("Logout"),
              //   onTap: (){},
              // ),
              myListTail(
                text: "Profile",
                icon: Icons.person,
                funnction:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> profilePage(person: personsList[0])));
                } ,
                 ),

                 const SizedBox(height: 20,),
                 myListTail(
                text: "Orders",
                 icon: Icons.shopping_bag_outlined,
                 funnction: (){},
                 ),

              const SizedBox(height: 20,),
              
              myListTail(
                text: "Settings",
                 icon: Icons.settings,
                 funnction: (){},
                 ),
              
              const SizedBox(height:230,),
              myListTail(
                text: "log out",
                 icon: Icons.logout,
                 funnction: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const logInPage()));
                 },
                )
      
      
      
          ],
          
        ),
      
      
      
      
      ),
    );

  }
}