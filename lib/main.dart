import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/sign_in/sign_in_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'screens/notive_list_complet.dart';

import 'app/sign_in/lista.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signInPage = SignInPage();
    final homePage = HomePage();

    FirebaseFirestore.instance.collection('contatos').get().then((value) {
      print(value);
    });

    return MaterialApp(
        title: 'Time track er',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
        initialRoute: SignInPage.tag,
        routes: {
          SignInPage.tag: (context) => MainPage(),
        }
    );
  }
}


