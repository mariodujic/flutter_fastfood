import 'package:flutter/material.dart';

class FoodAddons extends Container {
  final String addonType;
  final double addonPrice;


  FoodAddons(this.addonType, this.addonPrice);

  @override
  Widget build(BuildContext context) {
    return Card(this.addonType, this.addonPrice);
  }
}

class Card extends StatefulWidget {
  String addonType;
  double addonPrice;

  Card(this.addonType, this.addonPrice);

  @override
  _CardState createState() => _CardState();
}

// State of addon card
// If tapped, changes state of a addon object
class _CardState extends State<Card> {


  bool _clicked = false;
  var color = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {

    return new GestureDetector(
      onTap: () {
        if (!_clicked) {
          setState(() {
            color = Colors.green;
            widget.addonType += " added";
            //this.priceModel.setItemPrice(addonPrice);
          });
          _clicked = true;
        } else {
          setState(() {
            color = Colors.blueGrey;
            widget.addonType = widget.addonType.substring(0, widget.addonType.indexOf(" "));
          });
          _clicked = false;
        }
      },
      child: new Container(
        height: 30.0,
        width: 300.0,
        margin: new EdgeInsets.all(3.0),
        decoration: new BoxDecoration(color: color),
        child: new Center(
            child: new Text(
              widget.addonType+"  "+widget.addonPrice.toString()+"€",
          textAlign: TextAlign.justify,
          style: new TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
