import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              lawerlist("জনাব আব্দুল আহাদ খান", "0951-61427",0),
              lawerlist("জনাব আমিনুল ইসলাম", "01716-001169",0),
              lawerlist("জনাব খাজা ময়েজ উদ্দিন", "01717-322929",0),
              lawerlist("জনাব নাদিরুজ্জামান ফকির", "01721-245377",0),
              lawerlist("জনাব আমিরুল ইসলাম", "01672-559897",0),
              lawerlist("জনাব রবীন্দ্র নারায়ন চক্রবর্তী", "01716-688366",0),
              lawerlist("জনাব মোঃ নূরুল ইসলাম ভূঁইয়া", "01726-547971",0),
              lawerlist("জনাব এমদাদুল হক শাহ্(১)", "01190-473121",0),
              lawerlist("জনাব অজিত রঞ্জন বিশ্বাস", "01722-003822",0),
              lawerlist("জনাব এম.এম.শফিকুল মুর্শেদ", "01760-256974",0),
              lawerlist("জনাব মধুসুদন সাহা", "01915-714222",0),
              lawerlist("জনাব বিনয় ভূষন চক্রবর্তী", "01760-706733",0),
              lawerlist("জনাব চন্ডি প্রসান ধর", "01715-155871",0),
              lawerlist("জনাব সামসুদ্দিন আহমেদ", "01760-840828",0),
              lawerlist("জনাব মুসলেম উদ্দিন আহামেদ", "01916-628700",0),
              lawerlist("জনাব মতিউর রহমান খান", "01717-608881",0),
              lawerlist("জনাব মোঃ আব্দুল করিম", "01712-214387",0),
              lawerlist("জনাব সিদ্দিকুর রহমান ভূঁইয়া", "01718-620887",0),
              lawerlist("জনাব বিজন সাথী দত্ত", "01721-483135",0),
              lawerlist("জনাব এ.কে.এম. শাহনেওয়াজ ফকির", "01719-599812",0),

            ],
          ),
        ),
      ),
    );
  }
}

Widget lawerlist(String name,String phone,inx){
  List image = [
    "Images/lawerImage.png",
    "Images/GridView/police.jpg"
  ];

  return Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
    child:Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[100]
    ),
    child: Card(
      elevation: 5,
      child: ListTile(
        contentPadding: EdgeInsets.all(5),
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(image[inx])),
          title: Text(name,
            style: TextStyle(
                fontSize: 20.0,
                //fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("ফোনঃ "+phone,
            style: TextStyle(
                fontSize: 18.0,
            ),),
        trailing: ElevatedButton(child: Icon(Icons.call),
          onPressed: ()async{
            await FlutterPhoneDirectCaller.callNumber(phone);
          },
        ),
        ),
    ),
  ));
  
}