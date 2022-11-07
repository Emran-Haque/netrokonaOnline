import 'package:flutter/material.dart';
class Place extends StatefulWidget {
  const Place({Key? key}) : super(key: key);

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('দর্শনীয় স্থান',
          style: TextStyle(
              fontSize: 20.0
          ),),
      ),
      body: Center(
        child: Text("Under construction",
          style: TextStyle(
              fontSize: 25.0
          ),),
      ),
    );;
  }
}
