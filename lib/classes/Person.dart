class Person {

Person({ // constructor

required this.firstName,
required this.lastName,
required this.email,
required this.passowrd,
this.major, // defult values , it is not necessary to provied value for them initialy , but we can change them later
this.age,
this.profileImagePath, 
this.descreption,
this.githupUrl,


});


final String firstName;
final String lastName;
dynamic age;
final String email;
final String passowrd; 
String? major; // the meaning of ( ? ) is that the value could be null
String? descreption; 
String? profileImagePath;
String? githupUrl; 


}


List<Person> personsList = [



  Person(
    firstName: "Mohammed",
    lastName: "Al Lail",
    age: 21,
    email: "alalmoh3404@gmail.com",
    passowrd: "Passowrd 1",
    major: "software Engineer  ",
    profileImagePath: "lib/images/myImage.JPG",
    githupUrl: "github.com/Mohammed-Al-Lail",
    descreption: """As someone who is learning the Flutter language, I have a strong enthusiasm and eagerness to dive into this exciting technology.
    Flutter, developed by Google, is a powerful and versatile cross-platform framework
    that allows me to build high-quality, natively compiled applications for both iOS and Android platforms using a single codebase.
    I'm thrilled to be embarking on this learning journey,""",
    
  ),

];


// This map will be used when the user sign up or signin and we will get the information of the person from here 
Map <String , Person> personMap = {

    "Email1@gmail.com": Person(firstName: "Ali", lastName: "Hussain", age: 57, passowrd: "Passowrd1",email:"Email1@gmail.com" , major: "Cs"),
    "Email2@gmail.comm": Person(firstName: "Qassem", lastName: "Salem", age: 17, passowrd: "Passowrd2",email: "Email2@gmail.com", major: "SWE"),
    "alalmoh3404@gmail.com": Person(firstName: "Qassem", lastName: "Salem", age: 17, passowrd: "Passowrd2",email: "Email3@gmail.com", major: "SWE"),

};

