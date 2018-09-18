import 'package:flutter/material.dart';
import 'package:flutter_app/submenu/food_addons_alertdialog/addon_alertdialog.dart';

class FoodMenuItem extends StatefulWidget {
  final String name;
  final String description;
  final int price;

  const FoodMenuItem(this.name, this.description, this.price);

  @override
  _FoodMenuItemState createState() => _FoodMenuItemState();
}

class _FoodMenuItemState extends State<FoodMenuItem> {
  final double fontSize = 15.0;

  bool stateValue = false;

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 40.0,
        margin: new EdgeInsets.all(2.0),
        decoration: new BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.all(new Radius.circular(5.0))),
        child: new Container(
          padding: new EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                child: new Text(
                  widget.name,
                  style: new TextStyle(
                      fontSize: fontSize + 2,
                      color: Colors.white,
                      fontFamily: "ubuntuBold"),
                ),
              ),
              new Container(
                child: new Text(
                  widget.description,
                  style: new TextStyle(
                      fontSize: fontSize - 3,
                      color: Colors.white70,
                      fontFamily: "ubuntuRegular"),
                ),
              ),
              new Container(
                child: new Text(
                  widget.price.toString() + "€",
                  style: new TextStyle(
                      fontSize: fontSize + 2,
                      color: Colors.white,
                      fontFamily: "ubuntuBold"),
                ),
              ),
              new ButtonTheme(
                minWidth: 40.0,
                height: 25.0,
                child: new RaisedButton(
                    color: const Color(0xFFbc3f18),
                    elevation: 6.0,
                    padding: new EdgeInsets.all(5.0),
                    splashColor: Colors.deepOrange,
                    child: new Row(
                      children: <Widget>[
                        Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                          size: 17.0,
                        ),
                        Text(
                          "Add to Cart",
                          style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "ubuntuRegular",
                              fontSize: 11.0),
                        )
                      ],
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => new FoodItemPopup(widget.name+" with extra:"));
                    }),
              )
            ],
          ),
        ));
  }
}
