import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/app/sign_in/user_list.dart';
import 'package:flutter_app/models/user.dart';

class HomePage extends StatelessWidget{
  static String tag ='/home';
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().contatos,
    child: Scaffold(
      appBar: AppBar(
        title: Text('Lista de contatos'),
      ),
    body: UserList(),
    floatingActionButton: FloatingActionButton(
      onPressed: () => null,
      tooltip: 'Adicionar novo',
      child: Icon(Icons.add),
    ),
    ),
    );

  }
}