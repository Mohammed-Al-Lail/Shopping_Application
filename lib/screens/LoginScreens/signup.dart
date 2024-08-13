import 'package:flutter/material.dart';
import 'package:shoping_center_project/screens/LoginScreens/logIn.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/TitleText.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/logInTextField.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/loginButton.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/myTextButton.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/personContainer.dart';

// ignore: must_be_immutable
class signUpPage extends StatelessWidget {
   signUpPage({super.key});

  TextEditingController firstNameController = TextEditingController() ;
  TextEditingController lastNameController = TextEditingController() ;
  TextEditingController emailController = TextEditingController() ;
  TextEditingController passowrdController = TextEditingController() ;
   TextEditingController passowrdConfirmationController = TextEditingController() ;

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
              controller: lastNameController,
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
             logInButton(buttonText:"SIGNUP",function: (){}),
             const SizedBox(height: 10,),

             // for Already have account? sign in Text
             myTextButton(
              message: "Already have account?",
              textButtonMessage: "sign in",
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> logInPage()));
              },
             ),

             const SizedBox(height: 20,),

            
            
        
        
        
            
          ],
        ),
      ),



    );



  }
}