import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/zillaInformation.dart';
import 'package:url_launcher/url_launcher.dart';
class Hotel extends StatefulWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {

  List hotel = [
    "হোটেল কবির ইন্টারন্যাশনাল",
    "স্বর্ণা গেস্ট হাউস",
    "প্রবাসী গেস্ট হাউস",
    "হোটেল গ্র্যান্ড সালমান",
    "হোটেল গোল্ডেন স্টার",
    "হোটেল মুন স্টার",
    "হোটেল জাবি",
    "হোটেল শাহজাহান",
    ""
  ];

  List address = [
    "রাজুর বাজার,নেত্রকোনা",
    "ঢাকা বাসস্ট্যান্ড,নেত্রকোনা",
    "তেরী বাজার,নেত্রকোনা",
    "তেরী বাজার,নেত্রকোনা",
    "থানার মোড়,নেত্রকোনা",
    "থানার মোড়,নেত্রকোনা",
    "থানার মোড়,নেত্রকোনা",
    "তেরী বাজার,নেত্রকোনা",
    "",

  ];

  @override
  Widget build(BuildContext context) {
    var cHeiht = MediaQuery.of(context).size.height/4;
    return Scaffold(
      appBar: AppBar(
        title: Text('আবাসিক হোটেল',
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
                      image: AssetImage("Images/GridView/hotel.jpg"),)
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
  List maddress = [
    "https://www.google.com/maps/place/Hotel+Kobir+International+and+Kutumbari+Restaurant/@24.8921634,90.738354,262m/data=!3m1!1e3!4m8!1m2!2m1!1ssagor+guest+house!3m4!1s0x3756fd5b63db5215:0x831a70cae022b88b!8m2!3d24.8921634!4d90.7390636",
    "https://www.google.com/maps/place/%E0%A6%B8%E0%A7%8D%E0%A6%AC%E0%A6%B0%E0%A7%8D%E0%A6%A3%E0%A6%BE+%E0%A6%97%E0%A7%87%E0%A6%B8%E0%A7%8D%E0%A6%9F+%E0%A6%B9%E0%A6%BE%E0%A6%89%E0%A6%B8/@24.8736666,90.7177961,934m/data=!3m1!1e3!4m10!1m2!2m1!1snetrokona+guest+house!3m6!1s0x3756fd209e2a7349:0x76e9d34144304162!8m2!3d24.8742373!4d90.7193515!15sChVuZXRyb2tvbmEgZ3Vlc3QgaG91c2WSAQtndWVzdF9ob3VzZeABAA!16s%2Fg%2F11f9j97lv9",
    "https://www.google.com/maps/place/%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%AC%E0%A6%BE%E0%A6%B8%E0%A7%80+%E0%A6%97%E0%A7%87%E0%A6%B8%E0%A7%8D%E0%A6%9F+%E0%A6%B9%E0%A6%BE%E0%A6%89%E0%A6%B8/@24.8541984,90.7189639,8392m/data=!3m1!1e3!4m10!1m2!2m1!1snetrokona+guest+house!3m6!1s0x3756fd700f7c35d1:0x2f5317f2ad438f57!8m2!3d24.8848776!4d90.732182!15sChVuZXRyb2tvbmEgZ3Vlc3QgaG91c2WSAQtndWVzdF9ob3VzZeABAA!16s%2Fg%2F11n9539j4j",
    "https://www.google.com/maps/place/%E0%A6%B9%E0%A7%8B%E0%A6%9F%E0%A7%87%E0%A6%B2+%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%A8%E0%A7%8D%E0%A6%A1+%E0%A6%B8%E0%A6%BE%E0%A6%B2%E0%A6%AE%E0%A6%BE%E0%A6%A8/@24.8838332,90.7317078,191m/data=!3m1!1e3!4m9!1m2!2m1!1snetrokona+guest+house!3m5!1s0x3756fd36c01dc59f:0x1188d45ccd88ef67!8m2!3d24.8838127!4d90.7324496!15sChVuZXRyb2tvbmEgZ3Vlc3QgaG91c2WSAQVob3RlbOABAA",
    "https://www.google.com/maps/place/Hotel+Golden+Star/@24.8866625,90.730663,78m/data=!3m1!1e3!4m8!1m2!2m1!1ssagor+guest+house!3m4!1s0x0:0x9947f5ac0652c5dd!8m2!3d24.8865934!4d90.730682",
    "https://www.google.com/maps/place/Hotel+Moon+Star/@24.8868889,90.730679,78m/data=!3m1!1e3!4m8!1m2!2m1!1ssagor+guest+house!3m4!1s0x0:0xda3c72777a2932e4!8m2!3d24.8869301!4d90.7307816",
    "https://www.google.com/maps/place/%E0%A6%B9%E0%A7%8B%E0%A6%9F%E0%A7%87%E0%A6%B2+%E0%A6%9C%E0%A6%BE%E0%A6%AC%E0%A6%BF+(Hotel+JABI)/@24.8868889,90.730679,78m/data=!3m1!1e3!4m8!1m2!2m1!1ssagor+guest+house!3m4!1s0x3756fd6f2e11addf:0x8fad6dc65f0db4f1!8m2!3d24.8870675!4d90.7310799",
    "https://www.google.com/maps/place/Shajahan+Hotel/@24.8848254,90.7321754,66m/data=!3m1!1e3!4m8!1m2!2m1!1ssagor+guest+house!3m4!1s0x3756fd698655179d:0xd10c7bc19a098267!8m2!3d24.8848245!4d90.7323503",

  ];

  Future<void> _launchInBrowser(String url) async{
    if(await canLaunch(url)){
      await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    headers: <String,String>{'header_key':'header_value'},
      );
    }
  }

  return Builder(
    builder: (context) {
      return Column(
        children: [
          ListTile(
            tileColor: Colors.grey[200],
            title: Text(name,
              style: TextStyle(
                fontSize: 20.0,
               // fontWeight: FontWeight.bold
              ),),
            subtitle: Text("স্থানঃ "+subname,
            style: TextStyle(
              fontStyle: FontStyle.italic,
                  fontSize: 18.0,
            ),
            ),
            trailing: ElevatedButton(
              child: Icon(Icons.location_on,
              color: Colors.redAccent,),
              onPressed: ()async{
              _launchInBrowser(maddress[index]);
              },
            ),
          ),
          SizedBox(height: 10,)
        ],
      );
    }
  );
}