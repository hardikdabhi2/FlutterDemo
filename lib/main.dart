import 'package:flutter/material.dart';
import './allOffersList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: new Scaffold(
       body: AllOfferList()
     ),
    );
  }
}