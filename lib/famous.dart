import 'package:flutter/material.dart';
class Famous extends StatefulWidget {
  const Famous({Key? key}) : super(key: key);

  @override
  State<Famous> createState() => _FamousState();
}

class _FamousState extends State<Famous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('স্বনামধন্য ব্যক্তিবর্গ',
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
