import 'package:flutter/material.dart';
import 'package:shoping_center_project/BottomApparPage.dart';
import 'package:shoping_center_project/classes/Person.dart';
import 'package:shoping_center_project/screens/LoginScreens/signup.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/TitleText.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/logInTextField.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/loginButton.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/myTextButton.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/personContainer.dart';

// ignore: must_be_immutable
class logInPage extends StatefulWidget {
    const logInPage({super.key});

  @override
  State<logInPage> createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  TextEditingController userNameController = TextEditingController() ;

  TextEditingController passowrdController = TextEditingController() ;

  // function for LOGIN Button
   loginButton(){

// check if the email was exist on the system
    if(personMap.keys.contains(userNameController.text)){ 

// check if the passowrd of the same email was correct

  if(personMap[userNameController.text]!.passowrd == passowrdController.text){

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  const SizedBox(
              height: 30,

              child: Center(
                      
                child: Text(
                    "Sign in Successfully",
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
      
      // we will wate for 3 seconds befor going to the next page
      Future.delayed(
        const Duration(seconds: 3), 
        () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomApparPage())),
        );
      

         return; // go out the method ( if email + passowrd were correct)
    
        }


    }

    // if the information were incorrect
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  const SizedBox(
              height: 30,

              child: Center(
                      
                child: Text(
                    "Incorrect information",
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
    





   } // End of the method

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(

      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Login Page",
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
                    "Login",
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
            
            // username Text 
            const TitleText("Username"),
              
            // user name text field
            logInTextField(
              controller: userNameController,
              hintText: "User Name",
              prefixIcon: Icons.person_2_outlined,
              obscureText: false
             ),

             // Passowrd Text 
             const TitleText("Passowrd"),
        
             // passowrd text field
             logInTextField(
              controller: passowrdController,
              hintText: "Passowrd",
              prefixIcon: Icons.lock_outline,
              obscureText: true,
             ),
        
             const SizedBox(height: 10,),
        
             // log in Button
             logInButton(buttonText:"LOGIN",function: loginButton ),
              
             const SizedBox(height: 10,),
             
        
             // for don't have account? sign up now Text
             myTextButton(
              message: "don't have acoount ?",
              textButtonMessage: "sign up",
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> signUpPage()));
              },
             ), 
        
        
        
        
            
          ],
        
        
        
        
        
        
        ),
      ),
    );

  }
}