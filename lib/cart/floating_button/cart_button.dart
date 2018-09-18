import 'package:flutter/material.dart';

class CartButton extends StatefulWidget {
  @override
  _CartButtonState createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return new FloatingActionButton(onPressed: () {
      setState(() {

      });
    },
      backgroundColor: Colors.deepOrange,
      child: Icon(Icons.shopping_cart),
    );
  }
}
