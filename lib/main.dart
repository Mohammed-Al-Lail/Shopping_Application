import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_center_project/Providers/productProvider.dart';
import 'package:shoping_center_project/screens/LoginScreens/logIn.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider( // from provider packge
      create: (context) => productProvider(),

      child: const MaterialApp(
        debugShowCheckedModeBanner:  false,
        home: logInPage(),
      ),
    );
  }
}
