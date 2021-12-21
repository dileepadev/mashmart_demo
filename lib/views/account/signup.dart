import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  SignEmail
    final signUpEmailButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.blueGrey.shade800,
      child: MaterialButton(
        minWidth: 150,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("Email");
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icon_custom/icon_email_127px.png',
              height: 20,
              width: 20,
            ),
            SizedBox(width: 8),
            Text("Email",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 18.0)
                    .copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );

    //  SignGoogle
    final signUpGoogleButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.red.shade600,
      child: MaterialButton(
        minWidth: 150,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("Google");
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icon_custom/icon_google_127px.png',
              height: 20,
              width: 20,
            ),
            SizedBox(width: 8),
            Text("Google",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 18.0)
                    .copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );

    //  SignFacebook
    final signUpFacebookButton = Material(
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.blue.shade700,
      child: MaterialButton(
        minWidth: 150,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("Facebook");
          /*Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return SignUpScreen();
          }));*/
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icon_custom/icon_facebook_127px.png',
              height: 20,
              width: 20,
            ),
            SizedBox(width: 8),
            Text("Facebook",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 18.0)
                    .copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );

    //  SignTwitter
    final signUpTwitterButton = Material(
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: 150,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("Twitter");
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icon_custom/icon_twitter_squared_127px.png',
              height: 20,
              width: 20,
            ),
            SizedBox(width: 8),
            Text("Twitter",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 18.0)
                    .copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Image.asset(
                    'assets/images/mashmart_logo_h.png',
                    height: 60,
                    width: 180,
                  ),
                ],
              ),
              SizedBox(height: 5),
              Image.asset('assets/images/account_signup_screen.png', height: 300, width: 320,),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  signUpEmailButton,
                  SizedBox(width: 10),
                  signUpGoogleButton,
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  signUpFacebookButton,
                  SizedBox(width: 10),
                  signUpTwitterButton,
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
