import 'package:flutter/material.dart';
import 'package:flutter_app/app/sign_in/sign_in_button.dart';
import 'package:flutter_app/app/sign_in/social_sign_in_button.dart';
import 'package:flutter_app/common_widgets/custom_raised_buttom.dart';
import 'package:flutter_app/screens/class_notice.dart';
import 'package:flutter_app/screens/class_notice_complet.dart';
import 'package:flutter_app/screens/escopo_notice_list_clas.dart';
import 'package:flutter_app/screens/escopo_notice_list_class.dart';
import 'package:flutter_app/services/auth.dart';

class MainPage extends StatefulWidget{
  SignInPage createState()=> SignInPage();
}

class SignInPage extends State<MainPage> {
  static String tag = '/login';
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '' ;
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 20.0,
        actions: <Widget>[
        ],
      ),
      body: _buildContent(),
      key: _formKey,
      backgroundColor: Colors.grey[200],

    );
}
Widget _buildContent(){
    return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Text(
      'Login',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.w600,
      ),

    ),

      SizedBox(height: 20.0),
      TextFormField(
          onChanged: (val){
            setState(() => email = val);
          }
      ),
      SizedBox(height: 20.0),
      TextFormField(
          obscureText: true,
          onChanged: (val){
            setState(() => password = val);
          }
      ),
      SizedBox(height: 20.0),
      SocialSignInButton(
        assetName: '',
        text: 'Entrar',
        textColor: Colors.white,
        color: Colors.teal[700],
        onPressed: () async {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new NoticeLis()),
            );
        },
      ),
      SizedBox(height: 40.0),
      SocialSignInButton(
        assetName: 'images/google-logo.png',
        text: 'Fazer login com o Google',
        textColor: Colors.black87,
        color: Colors.white,
        onPressed: () {},
      ),
      SizedBox(height: 8.0),
      SocialSignInButton(
        assetName: 'images/facebook-logo.png',
        text: 'Fazer login com o Facebook',
        textColor: Colors.white,
        color: Color(0xFF334D92),
        onPressed: () {},
      ),
    ],
    ),
    );
    }
    }




