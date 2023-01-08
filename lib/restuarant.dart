import 'package:flutter/material.dart';
import 'package:myapp/zillaInformation.dart';
import 'package:url_launcher/url_launcher.dart';

class Restuarant extends StatefulWidget {
  const Restuarant({Key? key}) : super(key: key);

  @override
  State<Restuarant> createState() => _RestuarantState();
}

class _RestuarantState extends State<Restuarant> {
  List hotel = [
    "সালতি ক্যাফে এন্ড রেস্টুরেন্ট",
    "ষড়ঋতু",
    "পাঁচফোঁড়ন ক্যাফে এন্ড রেস্টুরেন্ট",
    "কস্তুরী কিচেন",
    "মিট পয়েন্ট",
    "চেক ইন রুফটপ রেস্টুরেন্ট",
    "খান রেস্টুরেন্ট",
    "গয়ানাথ মিষ্টান্ন ভান্ডার",
    "",
  ];

  List address = [
    "বড় বাজার,নেত্রকোনা",
    "পুরাতন কোর্ট রোড,নেত্রকোনা",
    "বড় বাজার,নেত্রকোনা",
    "বড় বাজার,নেত্রকোনা",
    "বড় বাজার,নেত্রকোনা",
    "মুক্তারপাড়া,নেত্রকোনা",
    "কুরপাড়,নেত্রকোনা",
    "আখরার মোড়,নেত্রকোনা",
    "",

  ];

  @override
  Widget build(BuildContext context) {
    var cHeiht = MediaQuery.of(context).size.height/4;
    return Scaffold(
      appBar: AppBar(
        title: Text('রেস্টুরেন্ট',
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
    image: AssetImage("Images/GridView/restuarant.jpg"),)
    ),
    ),
    SizedBox(height: 2,),
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
    "https://www.google.com/maps/place/Salti+Cafe+%26+Restaurant/@24.8831881,90.7336518,21z/data=!4m5!3m4!1s0x3756fd6a0d20d481:0x5cb5630716e9b07c!8m2!3d24.8832066!4d90.7336971!5m1!1e4",
    "https://www.google.com/maps/place/Shororitu/@24.8780867,90.7309184,21z/data=!4m12!1m6!3m5!1s0x3756fd14cc2a8d91:0x6c45625df3717061!2sShororitu!8m2!3d24.8781326!4d90.7309369!3m4!1s0x3756fd14cc2a8d91:0x6c45625df3717061!8m2!3d24.8781326!4d90.7309369!5m1!1e4",
    "https://www.google.com/maps/place/%E0%A6%AA%E0%A6%BE%E0%A6%81%E0%A6%9A%E0%A6%AB%E0%A7%8B%E0%A6%81%E0%A7%9C%E0%A6%A8+%E0%A6%95%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%AB%E0%A7%87+%E0%A6%8F%E0%A6%A8%E0%A7%8D%E0%A6%A1+%E0%A6%B0%E0%A7%87%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A7%81%E0%A6%B0%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%9F_Panchforan+Cafe+%26+Restaurant/@24.8828068,90.7328649,19z/data=!4m12!1m6!3m5!1s0x3756fd6a0d20d481:0x5cb5630716e9b07c!2sSalti+Cafe+%26+Restaurant!8m2!3d24.8832066!4d90.7336971!3m4!1s0x0:0x7ddbd375bd58bd8b!8m2!3d24.8829631!4d90.7331355!5m1!1e4",
    "https://www.google.com/maps/place/%E0%A6%95%E0%A6%B8%E0%A7%8D%E0%A6%A4%E0%A7%81%E0%A6%B0%E0%A7%80+%E0%A6%95%E0%A6%BF%E0%A6%9A%E0%A7%87%E0%A6%A8/@24.8828068,90.7328649,19z/data=!4m12!1m6!3m5!1s0x3756fd6a0d20d481:0x5cb5630716e9b07c!2sSalti+Cafe+%26+Restaurant!8m2!3d24.8832066!4d90.7336971!3m4!1s0x3756fda54411972d:0x8662a77b6122b12f!8m2!3d24.882381!4d90.7334507!5m1!1e4",
    "https://www.google.com/maps/place/Meet+point/@24.8834327,90.7332959,18.75z/data=!4m12!1m6!3m5!1s0x3756fd6a0d20d481:0x5cb5630716e9b07c!2sSalti+Cafe+%26+Restaurant!8m2!3d24.8832066!4d90.7336971!3m4!1s0x0:0x3ca792e568ee871d!8m2!3d24.8827334!4d90.7330537!5m1!1e4",
    "https://www.google.com/maps/place/Check+In+Rooftop+Restaurant/@24.877465,90.7306297,18.75z/data=!4m12!1m6!3m5!1s0x3756fd6a0d20d481:0x5cb5630716e9b07c!2sSalti+Cafe+%26+Restaurant!8m2!3d24.8832066!4d90.7336971!3m4!1s0x0:0x42110ea677c0411d!8m2!3d24.8766457!4d90.7300168!5m1!1e4",
    "https://www.google.com/maps/place/Khan+Restaurant/@24.8729441,90.7296983,18.33z/data=!4m12!1m6!3m5!1s0x3756fd6a0d20d481:0x5cb5630716e9b07c!2sSalti+Cafe+%26+Restaurant!8m2!3d24.8832066!4d90.7336971!3m4!1s0x3756fd1151cebbf7:0x9c289ad132d92b0c!8m2!3d24.8721088!4d90.7290668!5m1!1e4",
    "https://www.google.com/maps/place/Goyanath+Sweets/@24.8854184,90.7352792,18.5z/data=!4m12!1m6!3m5!1s0x3756fd6a0d20d481:0x5cb5630716e9b07c!2sSalti+Cafe+%26+Restaurant!8m2!3d24.8832066!4d90.7336971!3m4!1s0x3756fd420ff7fa41:0xba6386a13275a993!8m2!3d24.885333!4d90.7348625!5m1!1e4",
    "",
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
            Container(
              decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyan
        ),
              child: ListTile(
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
                //leading: Image.asset('Images/GridView/hotel.jpg',),
                trailing: ElevatedButton(
                  child: Icon(Icons.location_on,
                    color: Colors.redAccent,),
                  onPressed: ()async{
                    _launchInBrowser(maddress[index]);
                  },
                ),
              ),
            ),
            SizedBox(height: 5,)
          ],
        );
      }
  );
}
