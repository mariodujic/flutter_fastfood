import 'package:flutter/material.dart';
import 'food_menu_item.dart' as item;
import '../cart/floating_button/cart_button.dart';
import 'dart:async';
import '../service/database/data.dart';
import 'dart:convert';

class ListItem extends StatefulWidget {
  String title;

  ListItem(this.title);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  List data;
  List submenuList;

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
    submenuList = data[0]["submenu"];
    print(submenuList.length);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color(0xFFFF851B),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => item.FoodMenuItem(
              submenuList[index]["name"],
              submenuList[index]["description"],
              submenuList[index]["price"],
            ),
        itemCount: submenuList.length,
      ),
      floatingActionButton: new CartButton(),
      backgroundColor: Colors.black,
    );
  }
}

class Food {
  String name;
  String description;
  int price;

  Food(String name, String description, int price) {
    this.name = name;
    this.description = description;
    this.price = price;
  }

  String getName() {
    return this.name;
  }

  String getDescription() {
    return this.description;
  }

  int getPrice() {
    return this.price;
  }
}
