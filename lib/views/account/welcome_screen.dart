import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mashmart/views/account/signup.dart';
import 'package:mashmart/views/homepage.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signInButton = Material(
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.teal.shade700,
      child: MaterialButton(
        minWidth: 150,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("SignIn");
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return HomePage();
          }));
        },
        child: Text("Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0)
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final signUpButton = Material(
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.grey.shade800,
      child: MaterialButton(
        minWidth: 150,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("SignUp");
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return SignUpScreen();
          }));
        },
        child: Text("Sign Up",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0)
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.bottomCenter,
                child: Text("Welcome to Mashmart",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Image.asset('assets/images/account_welcome_screen.png'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/mashmart_logo_h.png',
                    height: 60,
                    width: 180,
                  ),
                ],
              ),
              SizedBox(height: 30),
              signInButton,
              SizedBox(height: 10),
              signUpButton,
            ],
          ),
        ),
      ),
    );
  }
}
