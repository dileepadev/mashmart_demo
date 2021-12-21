import 'package:flutter/material.dart';
import 'package:mashmart/views/account/welcome_screen.dart';
import 'package:mashmart/views/homepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal.shade700,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: WelcomeScreen(),

    );
  }
}