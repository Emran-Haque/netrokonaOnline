import 'package:flutter/material.dart';
class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('প্রশিক্ষণ কেন্দ্র',
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
