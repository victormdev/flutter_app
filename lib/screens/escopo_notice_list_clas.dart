import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/sign_in/list_notices.dart';
import 'package:flutter_app/app/sign_in/social_sign_in_button.dart';

import 'class_notice.dart';
import 'detail.dart';

class NoticeLis extends StatefulWidget{

  final state = new _NoticeListPageState();

  @override
  _NoticeListPageState createState() => state;

}

class _NoticeListPageState extends State<NoticeLis>{
  var _img;
  var _title;
  var _date;
  var _description;

  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    final title = 'Feed de notícias';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 16.0),
            ListButton2(
              assetName: 'images/vacina-covid.png',
              text: 'Profissionais de saúde denunciam...',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new Detail()),
                );
              },
            ),
            SizedBox(height: 8.0),
            ListButton2(
              assetName: 'images/mapa.png',
              text: '22 estados já vacinaram 1,5M...',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: 8.0),
            ListButton2(
              assetName: 'images/covax.jpg',
              text: 'Americana Novavax anuncia que...',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: 8.0),
            ListButton2(
              assetName: 'images/enem.jpg',
              text: 'Confira o gabarito do Enem',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: 8.0),
            ListButton2(
              assetName: 'images/fgts.jpg',
              text: 'Saiba como evitar golpe que...',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: 50.0),

          ],
        ),
          bottomNavigationBar: _getBottomNavigationBa()

      ),
    );

  }
  Widget _getBottomNavigationBa() {

    return new BottomNavigationBar(
      items: [
        new BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            title: Text('Recentes'),
            backgroundColor: Colors.blue
        ),
        new BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            title: Text('Notícias'),
            backgroundColor: Colors.blue[800]
        ),
        new BottomNavigationBarItem(
            icon: const Icon(Icons.info),
            title: Text('Sobre'),
            backgroundColor: Colors.blue
        )
      ],
    );
  }

}