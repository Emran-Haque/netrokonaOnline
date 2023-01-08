import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
class Bus extends StatefulWidget {
  const Bus({Key? key}) : super(key: key);

  @override
  State<Bus> createState() => _BusState();
}

class _BusState extends State<Bus> {

  List hotel = [
    "শাহ্জালাল টিকেট কাউন্টার‌",
    "বিআরটিসি বাস কাউন্টার",
    "হযরত শাহপরান (রঃ) এন্টারপ্রাইজ",
    "বিশাল পরিবহন",
    "শেষ সীমান্ত কাউন্টার",
    "যশোদা পরিবহন"


  ];

  List address = [
      "01717058151",
      "01917228939",
      "01772869150",
    "01714996738",
    "01947987374",
    "01920571812"

  ];

  @override
  Widget build(BuildContext context) {
    var cHeiht = MediaQuery.of(context).size.height/4;
    return Scaffold(
      appBar: AppBar(
        title: Text('বাস টিকিট',
          style: TextStyle(
              fontSize: 20.0
          ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: cHeiht,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("Images/GridView/bus.jpg"),)
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - cHeiht,
              child: ListView(
                children: [
                  for(int i=0;i<hotel.length;i++)
                    addSheba(hotel[i], address[i],i)
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}



Widget addSheba(String name,String  subname,int index){
  return Builder(
      builder: (context) {
        return Column(
          children: [
            ListTile(
              tileColor: Colors.grey[200],
              title: Text(name,
                style: TextStyle(
                  fontSize: 20.0,
                ),),
              subtitle: Text("ফোনঃ "+subname,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                ),
              ),
              trailing: ElevatedButton(
                child: Icon(Icons.call,),
                onPressed: ()async{
                  await FlutterPhoneDirectCaller.callNumber(subname);
                },
              ),
            ),
            SizedBox(height: 10,)
          ],
        );
      }
  );
}