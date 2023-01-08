import 'package:flutter/material.dart';

import 'lawer.dart';
class Police extends StatefulWidget {
  const Police({Key? key}) : super(key: key);

  @override
  State<Police> createState() => _PoliceState();
}

class _PoliceState extends State<Police> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("থানা পুলিশ",
        style: TextStyle(
          fontSize: 20.0
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:5.0 ,),
            Container(
              child: Text(
                "থানা ও তদন্ত কেন্দ্রের নামঃ",
                style: TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height:5.0 ,),
            lawerlist("নেত্রকোনা মডেল থানা", "01320104185",1),
            lawerlist("পূর্বধলা থানা", "01320104315",1),
            lawerlist("বারহাট্টা থানা", "013201041211",1),
            lawerlist("মোহনগঞ্জ থানা", "01320104393",1),
            lawerlist("মদন থানা", "01320104367",1),
            lawerlist("খালিয়াজুরী থানা", "01320104419",1),
            lawerlist("কেন্দুয়া থানা", "01320104341",1),
            lawerlist("আটপাড়া থানা", "01320104263",1),
            lawerlist("দুর্গাপুর থানা", "01320104289",1),
            lawerlist("কলমাকান্দা থানা", "01320104237",1),
            SizedBox(height:5.0 ,),
            Container(
              child: Text(
                "তদন্ত কেন্দ্র ও ফাঁড়ির নাম",
                style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height:5.0 ,),

            lawerlist("শ্যামগঞ্জ তদন্ত কেন্দ্র", "01320104333",1),
            lawerlist("সিধলী তদন্ত কেন্দ্র", "01320104252",1),
            lawerlist("বিশরপাশা তদন্ত কেন্দ্র", "01320104254",1),
            lawerlist("পেমই তদন্ত কেন্দ্র", "01320104364",1),
            lawerlist("আদর্শনগর তদন্ত কেন্দ্র", "01320104410",1),
            lawerlist("লেপশিয়া তদন্ত কেন্দ্র", "01320104432",1),
            lawerlist("সদর ফাঁড়ি", "01320104207",1),
            lawerlist("ফকিরের বাজার ফাঁড়ি", "01320104225",1),
          ],

        ),
      )
    );
  }
}
