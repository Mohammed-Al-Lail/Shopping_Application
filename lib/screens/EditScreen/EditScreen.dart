import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping_center_project/classes/Person.dart';
import 'package:shoping_center_project/utilities/EditScreenUtilites/myDropDownButton.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/logInTextField.dart';
import 'package:shoping_center_project/utilities/loginPageUtilites/loginButton.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({
    
    super.key,
    required this.person
  
  });

  final Person person ;

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {


  int? selectedBirthday; // this variable will be defind later on the dropDown Button
  String? selectedMajor; // this variable will be defind later on the dropDown Button

  List majorsList = [ // list of majors
    "Softwatre Engineer",
    "Computer Since",
    "Mechanical Engineer"
  ];

  List yearsList = [ // list of the items on DropdownButton
            1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,
            1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,
            2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,
            2010,2011,2012,2013,2014,2015,2016,
                ];

    TextEditingController imagePathController = TextEditingController();  // to save image path
    TextEditingController gitHubUrlController = TextEditingController();  // to save image path  


  //method to calculate the age of the user
  String findAge(int? val){

    int age ;
    age = 2024-val! ;

    return age.toString();
  }


  // method to save the changes made by the user
     saveButtonMethod(){

      
      if(selectedBirthday != null){ // if the user select a value
        setState(() {
          widget.person.age= findAge(selectedBirthday); // update user age
        });
      }

      if(selectedMajor !=null){ // if the user select a value
        setState(() {
          widget.person.major=selectedMajor; // update user major
        });
      }

      if(imagePathController.text.isNotEmpty){

        setState(() {
          widget.person.profileImagePath = imagePathController.text;
        });
      }

      if(gitHubUrlController.text.isNotEmpty){

        setState(() {
          widget.person.githupUrl = gitHubUrlController.text;
        });
      }


      
      
      ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content:  const SizedBox(
              height: 30,

              child: Center(
                      
                child: Text(
                    "The information was Updated ",
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

      Future.delayed( // after 3 seconds the page will be closed automatically
        const Duration(seconds: 3),
        () => Navigator.pop(context),
      
      );


    }

  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    
    backgroundColor: Colors.deepPurple.shade100,
    
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          
            children: [
          
          
              //icon button to close the page
              Row( // this row is to make the containe at the left
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50, 
                    height: 50,
                    margin: const EdgeInsets.only(left: 5, top: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300
                    ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context); // close the page
                      }, 
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Colors.black,
                      )
                      ),
                  ),
                ],
              ),
          
              Center(
                child: Text(
                  "Hello ${widget.person.firstName}",
                  style: GoogleFonts.aclonica(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade500
                  ),
                  
                ),
              ),
              const SizedBox(height: 10,),
          
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Update your information...",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.afacad(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(height: 30,),
          
          
              // for Birthday 
               MyDropDownButton(
                title: "Birthday:", 
                selectedValue: selectedBirthday, 
                itemsList: yearsList,
                
                onChanged: (val){ // onChanged should take a dynamic parameter (as i did in MyDropDownButton)
                  setState(() {
                    selectedBirthday = val ;
                  });
                  },
                ),
          
              // for select the major
              MyDropDownButton(
                title: "Major:", 
                selectedValue: selectedMajor, 
                itemsList: majorsList, 

                onChanged: (val){ // onChanged should take a dynamic parameter (as i did in MyDropDownButton)
                    setState(() {
                      selectedMajor = val ;
                    });
                  },
                ),
          
                const SizedBox(height: 20,),
          
          
                Text(
                  "Profile Image Path",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
          
                // text field to provide the image path
                logInTextField(
                  controller: imagePathController , 
                  hintText: "Image Path", 
                  obscureText: false
                  ),
          
               
                // for git hub Url
                const SizedBox(height: 20,),
          
          
                Text(
                  "GitHub Url",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
          
                // text field to provide the git hub Url
                logInTextField(
                  controller: gitHubUrlController , 
                  hintText: "git hub Url", 
                  obscureText: false
                  ),
          
               const SizedBox(height: 20,),


          
                // Save Button
                logInButton(
                  buttonText: "Save", 
                  function: saveButtonMethod
                  ),
          
              
          
            ],
          ),
        ),
      ),
    );


  }
}