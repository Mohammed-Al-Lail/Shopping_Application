import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';

class PayScreen extends StatelessWidget {
   PayScreen({super.key});

final _formKey = GlobalKey(); // we will use it within the form widget

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(

        title:Text(
                "Card information",
                style: GoogleFonts.aclonica(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

       centerTitle: true,       


      ),

      body: SafeArea(

        child: Column(
        
          children: [
            
              const SizedBox(height: 10,),

            // credit card
              CreditCardWidget( // using flutter_credit_card Package

              // required arguments
                cardNumber: "123456789111728278", 
                expiryDate: "12/28", 
                cardHolderName: "Mohammed Al Lail", 
                cvvCode: "123", 
                showBackView: false, 
                onCreditCardWidgetChange: (CreditCardBrand brand){},

              // optional Arguments
                cardBgColor: Colors.black,
                bankName: "AL-Lail Bank",
                isHolderNameVisible: true,
                labelValidThru: "Expiry Date:",
                obscureInitialCardNumber: true,
                obscureCardCvv: true,
                cardType: CardType.mastercard,
                isSwipeGestureEnabled: true, // enable flipping the card
                chipColor: Colors.yellow.shade300,

                ),

                const SizedBox(height: 20,),

               //Form widget => to get the card info
                Form(
                key: _formKey,
                child: const Column(

                  children: [

                    // text field (card number)

                    //text field (card Expiry date)

                    //text field (cvv)
                  ],


                ),
                
                )
                

          ],
        ),
      ),
    );
  }
}