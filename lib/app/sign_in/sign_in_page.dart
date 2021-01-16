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
      SizedBox(height: 60.0),
      CustomRaisedButtom(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/google-logo.png'),
            Text('Fazer login com o Google'),
            Image.asset('images/google-logo.png'),
          ],
        ),
        color: Colors.white,
        onPressed: () {},
      ),
      SizedBox(height: 8.0),
      SignInButton(
        text: 'Fazer login com o Google',
        textColor: Colors.black87,
        color: Colors.white,
        onPressed: () {},
      ),
      SizedBox(height: 8.0),
      SignInButton(
        text: 'Fazer login com o Facebook',
        textColor: Colors.white,
        color: Color(0xFF334D92),
        onPressed: () {},
      ),
      SizedBox(height: 8.0),
      SignInButton(
        text: 'Fazer login com o e-mail',
        textColor: Colors.white,
        color: Colors.teal[700],
        onPressed: () {},
      ),

      SizedBox(height: 4.0),
      Text(
          'Esqueci a minha senha',
        style: TextStyle(fontSize: 14.0, color: Colors.black87),
        textAlign: TextAlign.center,
      )
    ],
    ),
    );
    }
    }




