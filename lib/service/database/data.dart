import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;


Future dbData() async {
  String s = await loadMenu();
  return s;
}

Future<String> loadMenu() async {
  return rootBundle.loadString("assets/data/food_data.json");
}