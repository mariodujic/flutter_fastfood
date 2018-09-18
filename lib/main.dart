import 'package:flutter/material.dart';
import 'package:flutter_app/menu/card.dart' as card;
import 'package:flutter_app/submenu/food_menu.dart' as foodMenu;
import 'package:flutter_app/cart/floating_button/cart_button.dart';

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




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
            child: new Text("FAST FOOD", textAlign: TextAlign.center)),
        backgroundColor: const Color(0xFFFF851B),
      ),
      body: new Container(
          decoration: new BoxDecoration(color: const Color(0xFF111111)),
          child: SingleChildScrollView(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                card.Card("assets/images/pizza.jpg", "Pizza",
                    foodMenu.FoodMenu("Pizza")),
                card.Card("assets/images/cheesburger.jpg", "Burgers",
                    foodMenu.FoodMenu("Burgers")),
                card.Card("assets/images/vegetarian.jpg", "Vegetarian",
                    foodMenu.FoodMenu("Vegetarian")),
                card.Card("assets/images/drinks.jpg", "Drinks",
                    foodMenu.FoodMenu("Drinks")),
                card.Card("assets/images/sweets.jpg", "Sweets",
                    foodMenu.FoodMenu("Sweets"))
              ],
            ),
          )),
      floatingActionButton: new CartButton()
    );
  }
}
