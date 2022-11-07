import 'package:flutter/material.dart';
class Lawer extends StatefulWidget {
  const Lawer({Key? key}) : super(key: key);

  @override
  State<Lawer> createState() => _LawerState();
}

class _LawerState extends State<Lawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('আইনজীবী',
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
