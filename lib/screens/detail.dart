import 'package:flutter/material.dart';
import 'package:flutter_app/models/newsApiv2.dart';
import 'package:flutter_app/models/NewsApi.dart';

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'G1',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Times New Roman'),
                  ),
                  SizedBox(height: 10),
                  Text(
                     'Funcionários da Saúde denunciam descarte de vacinas no Rio',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Por Flávia Jannuzzi, Vivianne Tufani e Anita Prado, RJ2',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 14.0),
                  ),
                  SizedBox(height: 15),
                  Image.asset('images/vacina_big.jpg'),
                  Text(
                    'O desperdício de doses da vacina contra o novo coronavírus é alvo de denúncias de médicos e enfermeiros do Rio. Como mostrou o RJ2 nesta quinta-feira (28), parte da vacina Oxford/AstraZeneca vem em frascos para serem aplicadas em dez pessoas, mas como algumas doses sobram, os profissionais dizem que a orientação recebida era para que fosse feito o descarte.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: _getBottomNavigationBa()
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