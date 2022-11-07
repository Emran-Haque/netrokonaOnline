import 'package:flutter/material.dart';
class Journalist extends StatefulWidget {
  const Journalist({Key? key}) : super(key: key);

  @override
  State<Journalist> createState() => _JournalistState();
}

class _JournalistState extends State<Journalist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('সাংবাদিক',
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
