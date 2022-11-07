import 'package:flutter/material.dart';
class Police extends StatefulWidget {
  const Police({Key? key}) : super(key: key);

  @override
  State<Police> createState() => _PoliceState();
}

class _PoliceState extends State<Police> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("থানা পুলিশ",
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
