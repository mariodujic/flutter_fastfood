import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  final String image;
  final String title;
  final Object foodMenu;

  const Card(this.image, this.title, this.foodMenu);

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {

  final double boxHeight = 120.0;
  final double boxRadius = 11.0;


  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget.foodMenu));
      },
      child: new Container(
        child: new Center(
          child: Text(
            widget.title,
            style: new TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
            fontFamily: "ubuntuBold"),
          ),
        ),
        height: boxHeight,
        margin: new EdgeInsets.fromLTRB(6.0, 3.0, 10.0, 6.0),
        decoration: new BoxDecoration(
            color: Colors.black,
            image: new DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.dstATop),
                image: new AssetImage(widget.image),
                fit: BoxFit.fitWidth),
            borderRadius: BorderRadius.all(new Radius.circular(boxRadius))),
      ),
    );
  }
}
