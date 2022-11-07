import 'package:flutter/material.dart';
class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ডাক্টার',
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
