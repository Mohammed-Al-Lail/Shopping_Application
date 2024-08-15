import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shoping_center_project/BottomApparPage.dart';
import 'package:shoping_center_project/classes/Person.dart';
import 'package:shoping_center_project/utilities/profilePageUtilites/profileDescreption.dart';
import 'package:shoping_center_project/utilities/profilePageUtilites/profilePageinfo.dart';

class profilePage extends StatelessWidget {

  const profilePage({ // constructor
    
    super.key,
    required this.person,
    
    });

  final Person person ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      

      body: SafeArea(

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          
            children: [
          
          
              // your profile Text and lottie animations
                Padding(
                  padding: const EdgeInsets.only(left: 5 , right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      
                      // home page button
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomApparPage())); // go to home page
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            shape: BoxShape.circle
                          ),
                          child: Lottie.asset(// using lottie package (home icon)
                            "lib/animations/home.json"
                          ),
                        ),
                      ),
                    // Your Profile text
                      Text(
                          "Your Profile",
                          style: GoogleFonts.aclonica(
                            fontSize: 45,
                            fontWeight: FontWeight.w800,
                            
                            
                          ),
                      ),
                    
                      Lottie.asset( // using lottie package (person icon)
                        "lib/animations/preson.json",
                       
                      ),
                  
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
          
              // for the profile Image and Name and age
                Row(
          
                  children: [
          
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
          
                      child: SizedBox(
                        width: 105,
                        height: 120,
                      
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
          
                          child: Image.asset(
                            person.profileImagePath=="" ? "lib/images/person_Icon.jpg" : person.profileImagePath,
                            fit: BoxFit.fill,
                            
                                              
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
          
                    // for The person Name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text(
                          person.firstName,
                          style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600
                        
                        
                      ),
                        ),
          
                        Text(
                          person.lastName,
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600
                        
                        
                      ),
                        ),
          
                        // for person age
                        Text(
                          "${person.age} years",
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade400
                        
                        
                      ),
                        )
                      ],
          
          
                    )
                  ],
                ),
          
                const Divider( thickness: 0.8,),
                 
                const SizedBox(height: 20,),
          
                   // for major + email + education 
                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                     child: Padding(
                       padding: const EdgeInsets.only(right: 15),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          // for the person major
                          profilePageinfo(infoTitle: "Major:", info: person.major),
                          const SizedBox(height: 10,),
          
                          // for git hub url
                            profilePageinfo(infoTitle: "Git hub:", info: person.githupUrl),
                            const SizedBox(height: 10,),
                          //for the person Email
                           profilePageinfo(infoTitle: "Email:", info: person.email),
                       
                         ],
                       ),
                     ),
                   ),
          
                  const SizedBox(height: 10,),
                  const Divider( thickness: 0.8,),
          
                  const SizedBox(height:10),
          
              // massege Text
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.start ,
                    
                    children: [
                  
                      Text(
                        "Message",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400
                        ),
                      ),
                    ],
                  ),
                ),
          
                // for the person descreption
                  profileDescreption(person.descreption),

                  // Edit Button
                  FloatingActionButton(

                    backgroundColor: Colors.deepPurple,
                    elevation: 15,
                    splashColor: Colors.deepPurple[300],
                     onPressed: (){},
                    child: const Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                      ),
                    ),
                    ),

               
          
                
          
            ],
          ),
        )
        
        ),
    );
  }
}