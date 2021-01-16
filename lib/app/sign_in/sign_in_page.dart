import 'package:flutter/material.dart';
import 'package:flutter_app/app/sign_in/sign_in_button.dart';
import 'package:flutter_app/common_widgets/custom_raised_buttom.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
        elevation: 20.0,
      ),
      body: _buildContent(),
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
    SizedBox(height: 8.0),
      RaisedButton(
        child: Text(
            'Fazer login com o Google',
            style: TextStyle(color: Colors.black87, fontSize: 15.0),
        ),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          )
        ),
        onPressed: () {},
      ),
      SizedBox(height: 8.0),
      SignInButton(
        text: 'Fazer login com o Facebook',
        textColor: Colors.black87,
        color: Colors.white,
        onPressed: () {},
      ),
    ],
    ),
    );
    }
    }




