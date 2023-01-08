import 'package:flutter/material.dart';
import 'package:myapp/zillaInformation.dart';

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
          addNews('নেত্রকোনা লাইভ',1),
          addNews('নেত্রকোনা জার্নাল',0),
          addNews('নেত্রকোনা সংবাদ',2),
          addNews('প্রথম আলো',3),
          addNews('The Daily Star',4),
          addNews('যুগান্তর',5),
          addNews('কালের কণ্ঠ',6),
          addNews('সমকাল',7),
          addNews('দৈনিক ইত্তেফাক',8),
          addNews('বাংলাদেশ প্রতিদিন',9),
          addNews('আমাদের সময়',10),
          addNews('নয়া দিগন্ত',11),
          addNews('ইনকিলাব',12),
          addNews('Jago News 24',13),
          addNews('bd News 24',13),
          addNews('দৈনিক শিক্ষা',14),

        ],
      ),
    ));
  }
}

Widget addNews(String ttl,int index){                     //ListTile
  List<String> images = [
        'Images/NewsImage/netrojournal.jpg',
        'Images/NewsImage/netrolive.png',
        'Images/NewsImage/netrosonbad.png',
        'Images/NewsImage/prothomAlo.png',
        'Images/NewsImage/DailyStar.png',
        'Images/NewsImage/jugantor.png',
        'Images/NewsImage/kalerKontho.png',
        'Images/NewsImage/somokal.png',
        'Images/NewsImage/ittefaq.png',
        'Images/NewsImage/banglaProtidin.png',
        'Images/NewsImage/amaderSomoy.png',
        'Images/NewsImage/noyaDigonto.png',
        'Images/NewsImage/inqilab.png',
        'Images/NewsImage/jagoNews.png',
        'Images/NewsImage/bdnews.png',
        '',

  ];
  List pages = [
    'https://www.netrakonalive.com/',
    'https://netrokonajournal.com/',
    'https://netrokonasongbad.com/',
    'prothomalo.com',
    'https://www.thedailystar.net/',
    'https://www.jugantor.com/',
    'https://www.kalerkantho.com/',
    'https://samakal.com/',
    'https://www.ittefaq.com.bd/',
    'https://www.bd-pratidin.com/printversion',
    'https://www.dainikamadershomoy.com/',
    'https://www.dailynayadiganta.com/',
    'https://www.dailyinqilab.com/',
    'https://www.jagonews24.com/',
    'https://bangla.bdnews24.com/',
    'https://www.dainikshiksha.com/',
    '',
  ];


  return Builder(
    builder: (context) {
      return Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mWebView(address: pages[index])));
            },
            leading: CircleAvatar(child: Image.asset(images[index]),radius: 40,),
            title: Text(ttl,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
            tileColor: Colors.cyanAccent,
            trailing: Icon(Icons.arrow_forward),
          ),
          SizedBox(height: 5.0,)
        ],
      );
    }
  );
}