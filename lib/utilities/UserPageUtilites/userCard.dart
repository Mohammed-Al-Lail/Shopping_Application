import 'package:flutter/material.dart';
import 'package:shoping_center_project/classes/Person.dart';
import 'package:shoping_center_project/screens/mainScreens/profilePage.dart';

class userCard extends StatelessWidget {
  const userCard({
    super.key,
    required this.person,
    });

  final Person person ;
  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,
      height: 120,

      decoration: BoxDecoration(

        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(12),
          topRight: Radius.circular(12)
        ),
        border: Border.all(
          color: Colors.grey.shade700,
          width: 3
        ),
      ),

      child: Row(

        children: [

          
          // user image 
          ClipRRect(
            borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(16)
            ),
            child: Image.asset(
              person.profileImagePath ?? "lib/images/person_Icon.jpg", // "lib/images/person_Icon.jpg" {is the defult value will appear if (person.profileImagePath) = null }
               width: 110,
               height: 120,
              fit: BoxFit.cover,
              
            ),
          ),
          const SizedBox(width: 15,),


          // user name 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                person.firstName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600
                ),
              ),
             const SizedBox(height: 5,),

             Text(
                person.lastName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500
                ),
              )
            ],
          ),
         const Spacer(),

          // arrow (icon)
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> profilePage(person: person)));
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            )
            ),


        ],
      ),


    );
  }
}