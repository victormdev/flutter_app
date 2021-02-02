import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/sign_in/list_notices.dart';
import 'package:flutter_app/app/sign_in/social_sign_in_button.dart';
import 'package:flutter_app/models/NewsApi.dart';
import 'class_notice.dart';

class NoticeList extends StatefulWidget{

  final state = new _NoticeListPageState();

  @override
  _NoticeListPageState createState() => state;

}

class _NoticeListPageState extends State<NoticeList>{

  List _news = new List();
  var repository = new NewsApi();

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(
        child: _getListViewWidget(),
      ),
    );

  }

  @override
  void initState() {

    loadNotices();

  }

  Widget _getListViewWidget(){

    var list = new ListView.builder(
        itemCount: _news.length,
        padding: new EdgeInsets.only(top: 5.0),
        itemBuilder: (context, index){
          return _news[index];
        }
    );

    return list;
  }

  loadNotices() async{

    List result = await repository.loadNews();

    setState(() {

      result.forEach((item) {

        var notice = new Notice(
            item['url_img'],
            item['tittle'],
            item['date'],
            item['description']
        );


        _news.add(notice);

      });

    });

  }

}