import 'package:flutter/material.dart';

class Restuarant extends StatefulWidget {
  const Restuarant({Key? key}) : super(key: key);

  @override
  State<Restuarant> createState() => _RestuarantState();
}

class _RestuarantState extends State<Restuarant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('রেস্টুরেন্ট',
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
    );
  }
}
