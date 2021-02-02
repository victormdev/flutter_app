import 'package:flutter/material.dart';
import 'package:flutter_app/models/contatos.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/models/user.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {

    final contatos = Provider.of<List<Contato>>(context);
    contatos.forEach((contato) {
      print(contato.nome);
      print(contato.contact);

    });
    return Container(

    );
  }
}