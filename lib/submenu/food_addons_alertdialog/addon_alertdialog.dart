import 'package:flutter/material.dart';
import 'addon_alertdialog_item.dart';

class FoodItemPopup extends StatefulWidget {
  final String name;

  const FoodItemPopup(this.name);

  @override
  _FoodItemPopupState createState() => _FoodItemPopupState();
}

class _FoodItemPopupState extends State<FoodItemPopup> {

  String addToChartText = "Add to Chart";

  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text(widget.name),
      actions: <Widget>[
        new Center(
          child: ButtonTheme(
            minWidth: 150.0,
            height: 40.0,
            child: RaisedButton(
              elevation: 7.0,
              color: Colors.green,
              splashColor: Colors.white,
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                });
              },
              child: Text(addToChartText),
            ),
          ),
        ),
        new Center(
          child: ButtonTheme(
            minWidth: 150.0,
            height: 40.0,
            child: RaisedButton(
              elevation: 7.0,
              color: Colors.deepOrange,
              splashColor: Colors.white,
              textColor: Colors.white,
              onPressed: () {
                setState(() {});
              },
              child: Text("Cancel"),
            ),
          ),
        )
      ],
      content: new SingleChildScrollView(
          child: new Column(
        children: <Container>[
          // Make ListView
          FoodAddons("Salad", 3.3),
          FoodAddons("Mayonnaise", 2.1),
          FoodAddons("Ketchup", 1.7),
          FoodAddons("Extra Cooked", 0.3),
          FoodAddons("Cucumbers", 0.5),
          FoodAddons("Pepperoni", 0.7),
          FoodAddons("Mushrooms", 1.3),
          FoodAddons("Onions", 1.0),
          FoodAddons("Sausage", 3.9),
          FoodAddons("Bacon", 2.2),
          FoodAddons("Cheese", 3.1),
          FoodAddons("Black olives", 2.5),
          FoodAddons("Green peppers", 1.9),
          FoodAddons("Pineapple", 3.4),
          FoodAddons("Spinach", 4.2)
        ],
      )),
    );
  }
}
