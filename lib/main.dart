import 'package:flutter/material.dart';
import 'package:flutter_app/menu/card.dart' as card;
import 'package:flutter_app/submenu/food_menu.dart' as foodMenu;
import 'package:flutter_app/cart/floating_button/cart_button.dart';
import 'package:flutter_app/service/database/data.dart';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data;

  Future<Set> printData() async {
    var dat = await dbData();

    setState(() {
      var dec = jsonDecode(dat);
      data = dec["menu"];
    });
  }

  @override
  void initState() {
    this.printData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        appBar: new AppBar(
          title: new Center(
              child: new Text("FAST FOOD", textAlign: TextAlign.center)),
          backgroundColor: const Color(0xFFFF851B),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => card.Card(
              "assets/images/" + data[index]["image"],
              data[index]["type"],
              foodMenu.ListItem(data[index]["type"])),
          itemCount: data.length,
        ),
        floatingActionButton: new CartButton());
  }
}
