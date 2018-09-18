import 'package:flutter/material.dart';
import 'food_menu_item.dart' as item;
import '../cart/floating_button/cart_button.dart';

class FoodMenu extends StatelessWidget {
  final String title;

  FoodMenu(this.title);

  @override
  Widget build(BuildContext context) {
    Set foodSetAuto = new Set();
    if (this.title.toLowerCase() == "pizza") {
      foodSetAuto.add(new Food("Margaritta", "Opis", 22));
      foodSetAuto.add(new Food("Riva", "Sve najbolje", 25));
      foodSetAuto.add(new Food("Varoš", "Sve ludilo", 27));
    } else if (this.title.toLowerCase() == "burgers") {
      foodSetAuto.add(new Food("Cheesburger", "A lot of cheese", 22));
      foodSetAuto.add(new Food("Tunaburger", "A lot of fish, a lot", 25));
      foodSetAuto.add(new Food("Hamburger", "Just bunch of ham ham ham", 27));
    }

    return new ListItem(this.title, foodSetAuto);
  }
}

class ListItem extends StatefulWidget {
  String title;
  Set foodSet;

  ListItem(this.title, this.foodSet);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color(0xFFFF851B),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => item.FoodMenuItem(
              widget.foodSet.elementAt(index).getName(),
              widget.foodSet.elementAt(index).getDescription(),
              widget.foodSet.elementAt(index).getPrice(),
            ),
        itemCount: widget.foodSet.length,
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
