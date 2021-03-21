import 'package:flutter/material.dart';
import 'first_page.dart';


void main() {
  runApp(LostnFound());
}

class LostnFound extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: FirstPage(),
    );
  }
}

