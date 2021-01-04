import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App UI",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
