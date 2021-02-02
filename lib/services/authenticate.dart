import 'package:flutter_app/app/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  @override
  Widget build(BuildContext context){
    if(showSignIn){
      return MainPage(toggleView: toggleView);
    }
    }
  }
}