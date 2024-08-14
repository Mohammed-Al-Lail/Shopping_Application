import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping_center_project/classes/Person.dart';
import 'package:shoping_center_project/utilities/UserPageUtilites/userCard.dart';

class usersPage extends StatelessWidget {
  const usersPage({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      
        body: Column(
      
          children: [
            const SizedBox(height: 20,),
      
            // Users tex
            Text(
              "Users",
              textAlign: TextAlign.center,
              style: GoogleFonts.aclonica(
                fontSize: 60,
                fontWeight: FontWeight.w900,
              ),
            ),
      
            // user cards as List view
            Expanded(
              child: ListView.builder(
                itemCount: personsList.length,
                itemBuilder: (context, index) {
              
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: userCard(person: personsList[index]),
                  );
                },
                ),
            ),
          ],
        ),
      ),
    );


  }
}