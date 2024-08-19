
import 'package:flutter/material.dart';
import 'package:shoping_center_project/BottomApparPage.dart';
import 'package:shoping_center_project/classes/Person.dart';
import 'package:shoping_center_project/screens/LoginScreens/logIn.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/TitleText.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/logInTextField.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/loginButton.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/myTextButton.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/personContainer.dart';

// ignore: must_be_immutable
class signUpPage extends StatefulWidget {
   signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  TextEditingController firstNameController = TextEditingController() ;

  TextEditingController lastNameController = TextEditingController() ;

  TextEditingController emailController = TextEditingController() ;

  TextEditingController passowrdController = TextEditingController() ;

   TextEditingController passowrdConfirmationController = TextEditingController() ;

// method for signup button
    signUpButton(){

      Person p =Person( // creat person object
        firstName: firstNameController.text, 
        lastName: lastNameController.text,  
        email: emailController.text, 
        passowrd: passowrdController.text
        );


// if the email was already exist on the system
  if(personMap.keys.contains(p.email)){


    // show snackbar if the email was exist
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  const SizedBox(
              height: 30,

              child: Center(
                      
                child: Text(
                    "The email is already exist",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                      ),
                    ),
                  ),
                ),

                    backgroundColor: Colors.red.shade900,
                    duration: const Duration(seconds: 2),
                    
             )
      );
      return; // go out the method

  }

// if there was missing information
  else if ( 
    p.firstName.isEmpty ||
    p.lastName.isEmpty  ||
    p.email.isEmpty ||
    p.passowrd.isEmpty ||
    passowrdConfirmationController.text.isEmpty 
  )

  {

ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  const SizedBox(
              height: 30,

              child: Center(
                      
                child: Text(
                    "Missing Information",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                      ),
                    ),
                  ),
                ),

                    backgroundColor: Colors.red.shade900,
                    duration: const Duration(seconds: 2),
     
             )
      );

   //return ; // go out the method
  }
  
   

// if The passowrds doesn't matchٍ
  else if(passowrdController.text != passowrdConfirmationController.text){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  const SizedBox(
              height: 30,

              child: Center(
                      
                child: Text(
                    "The passowrds doesn't match",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                      ),
                    ),
                  ),
                ),

                    backgroundColor: Colors.red.shade900,
                    duration: const Duration(seconds: 2),
                    
             )
      );
        
         
    }

            

    else {  // if everything was correct

    personsList.add( p ); // adding the person to the list
    personMap[emailController.text]=p ; // adding the person to the map with the key person email

   
    // show snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  const SizedBox(
              height: 30,

              child: Center(
                      
                child: Text(
                    "SignUp successfully",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                      ),
                    ),
                  ),
                ),

                    backgroundColor: Colors.green.shade900,
                    duration: const Duration(seconds: 2),
     
             )
      );

      // we will wait for 3 seconds befor going to the next page
      Future.delayed(
        const Duration(seconds: 3), 
        () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomApparPage())),
        );

    }




   }// End of method





  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Sign Up Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        
          children: [

            const SizedBox(height: 50,),
        
            // for login text
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey.shade800
                    ),
                  ),
                ),
              ],
            ),

            const personContainer(),

            // for first name
            const TitleText("First name"),
            logInTextField(
              controller: firstNameController,
               hintText: "Fist name",
               obscureText: false,
               ),

            // for last name
            const TitleText("Last name"),
            logInTextField(
              controller: lastNameController,
               hintText: "Last name",
               obscureText: false,
               ),

            // for Email
            const TitleText("Email"),
            logInTextField(
              controller: emailController,
               hintText: "Email",
               obscureText: false,
               ),

            // for Passowrd
            const TitleText("passowrd"),
            logInTextField(
              controller: passowrdController,
               hintText: "Passowrd",
               obscureText: true,
               ),

            // for Passowrd confirmation
            const TitleText("passowrd confirmation"),
            logInTextField(
              controller: passowrdConfirmationController,
               hintText: "Passowrd confirmation",
               obscureText: true,
               ),

               // sign up Button
             logInButton(buttonText:"SIGNUP",function: signUpButton ),

             const SizedBox(height: 10,),

             // for Already have account? sign in Text
             myTextButton(
              message: "Already have account?",
              textButtonMessage: "sign in",
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const logInPage()));
              },
             ),

             const SizedBox(height: 20,),

            
            
        
        
        
            
          ],
        ),
      ),



    );



  }
}