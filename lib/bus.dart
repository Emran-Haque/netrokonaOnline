import 'package:flutter/material.dart';
class Bus extends StatefulWidget {
  const Bus({Key? key}) : super(key: key);

  @override
  State<Bus> createState() => _BusState();
}

class _BusState extends State<Bus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('বাস টিকিট',
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
