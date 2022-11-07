import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("অনলাইন খবর",
        style: TextStyle(
          fontSize: 20.0
        ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(1, 10, 1, 10),
        children: [
          addNews('নেত্রকোনা লাইভ',0),
          addNews('নেত্রকোনা জার্নাল',1),
          addNews('নেত্রকোনা টাইমস',2),

        ],
      ),
    ));
  }
}

Widget addNews(String ttl,int index){                     //ListTile
  List<String> images = [
        'Images/NewsImage/netrojournal.jpg',
        'Images/NewsImage/netrolive.png',
        'Images/NewsImage/times.jpg'
  ];
  List pages = [
    
  ];


  return ListTile(
    onTap: (){
        
    },
    leading: Image.asset(images[index]),
    title: Text(ttl,
      textAlign: TextAlign.end,
    ),
    trailing: Icon(Icons.arrow_forward),
  );
}