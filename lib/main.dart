import 'package:flutter/material.dart';
import 'package:flutter_app/app/sign_in/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signInPage = SignInPage();
    return MaterialApp(
        title: 'Time tracker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: SignInPage(),
    );
  }
}


