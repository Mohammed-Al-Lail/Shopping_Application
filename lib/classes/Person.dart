class Person {

Person({ // constructor

required this.firstName,
required this.lastName,
required this.age,
required this.email,
required this.major,
required this.profileImagePath,
required this.descreption,
this.githupUrl="" // implicit git hub value (this will be the value if it was not change)


});


final String firstName;
final String lastName;
final int age;
final String email;
final String major;
final String descreption;
final String profileImagePath;
String githupUrl; 


}


List<Person> personsList = [



  Person(
    firstName: "Mohammed",
    lastName: "Al Lail",
    age: 21,
    email: "alalmoh3404@gmail.com",
    major: "software Engineer  ",
    profileImagePath: "lib/images/myImage.JPG",
    githupUrl: "github.com/Mohammed-Al-Lail",
    descreption: """As someone who is learning the Flutter language, I have a strong enthusiasm and eagerness to dive into this exciting technology.
    Flutter, developed by Google, is a powerful and versatile cross-platform framework
    that allows me to build high-quality, natively compiled applications for both iOS and Android platforms using a single codebase.
    I'm thrilled to be embarking on this learning journey,""",
    
  ),

];