import 'package:flutter/material.dart';

class Ambulance extends StatefulWidget {
  const Ambulance({Key? key}) : super(key: key);

  @override
  State<Ambulance> createState() => _AmbulanceState();
}

class _AmbulanceState extends State<Ambulance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("এ্যাম্বুলেন্স",
        style: TextStyle(
          fontSize: 20.0
        ),),
      ),
      body: Center(child:Text(
        "Under Construction",
        style: TextStyle(
          fontSize: 30.0,
        ),
      )),
    );
  }
}
