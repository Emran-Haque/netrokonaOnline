import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Custom/NavBar.dart';
import 'package:myapp/bus.dart';
import 'package:myapp/doctor.dart';
import 'package:myapp/famous.dart';
import 'package:myapp/fire.dart';
import 'package:myapp/helpline.dart';
import 'package:myapp/hospital.dart';
import 'package:myapp/hotel.dart';
import 'package:myapp/journalist.dart';
import 'package:myapp/lawer.dart';
import 'package:myapp/news.dart';
import 'package:myapp/place.dart';
import 'package:myapp/police.dart';
import 'package:myapp/rail.dart';
import 'package:myapp/restuarant.dart';
import 'package:myapp/training.dart';
import 'package:myapp/Custom/CarouselDetails.dart';
import 'package:myapp/zillaInformation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    ));

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {


  @override
  Widget build(BuildContext context) {
    var carousel_width = MediaQuery.of(context).size.width;

    List details=[
      "বিরিশিরি নেত্রকোনা জেলার দুর্গাপুর উপজেলায় অবস্থিত একটি ঐতিহ্যবাহী গ্রাম। বিরিশিরি নেত্রকোনার একটি বিখ্যাত পর্যটন স্থান। প্রতি বছর প্রচুর মানুষ এই আশ্চর্যজনক প্রাকৃতিক সৌন্দর্য দেখতে যান। বিরিশিরির বিজয়পুরে রয়েছে আকর্ষণীয় সিরামিক পাহাড় এবং নীল জলের হ্রদ। বিজয়পুরের এই সিরামিক পাহাড় এবং সমতল দৈর্ঘ্য প্রায় 16 কিলোমিটার এবং প্রস্থ 600 মিটার। হ্রদের নীল জল সমস্ত ক্লান্তি এবং ক্লান্তি নিমিষেই দূর করে। হ্রদের নীল জলের প্রধান উৎস সোমেশ্বরী নদী। ",
      "নেত্রকোনা জেলার মোহনগঞ্জ উপজেলায় অবস্থিত ডিঙ্গাপোতা হাওর দেশের অন্যতম বৃহত্তম হাওর। এই হাওরের সৌন্দর্য ঋতু থেকে ঋতুতে বিভিন্ন রূপে ফুটে ওঠে। এটি নেত্রকোনার একটি অত্যাশ্চর্য পর্যটন স্পট। বর্ষাকালে হাওরের পানির স্রোত এবং শুষ্ক মৌসুমে চারপাশের অপরূপ সৌন্দর্য দেখে মুগ্ধ হন প্রকৃতিপ্রেমী দর্শনার্থীরা।",
      "ঐতিহ্যবাহী কমলা রানীর দীঘি দুর্গাপুর উপজেলা সদর থেকে তিন কিলোমিটার দূরে বিরিশিরি ইউনিয়ন পরিষদের কাছে অবস্থিত। এটি নেত্রকোনার একটি পর্যটন স্পট যা প্রকৃতির কাছে নিতে পারে। অনেকের কাছে এটি সাগর দীঘি নামেও পরিচিত।",
      "সোমেশ্বরী নদী ও এর সৌন্দর্য উপভোগ করতে আপনাকে যেতে হবে নেত্রকোনা জেলার দুর্গাপুর উপজেলায়। সোমেশ্বরী নদী ভারতের মেঘালয়ের গারো পাহাড়ের সিমসাংগ্রী থেকে উৎপন্ন হয়ে দুর্গাপুরে প্রবেশ করেছে। এটি দেখার জন্য একটি বিখ্যাত পর্যটক আকর্ষণ। সোমেশ্বর পাঠক এই এলাকাটি অনেক আগে দখল করেন এবং তাঁর নামানুসারে এটি সোমেশ্বরী নদী নামে পরিচিতি লাভ করে। বছরের বিভিন্ন সময়ে সোমেশ্বরী নদীর আলাদা সৌন্দর্য থাকে। শীতে পানি কমলেও চির-পরিষ্কার পানির সোমেশ্বরী নদী যেন বর্ষায় তার যৌবন ফিরে পায়।",
      "বৃহত্তর ময়মনসিংহের ক্ষুদ্র নৃ-গোষ্ঠীর মধ্যে হাজং, কোচ, ডালু, মান্দাই, বানাই গোষ্ঠীর সংস্কৃতি সংরক্ষণের জন্য প্রাথমিকভাবে উপজাতীয় কালচারাল একাডেমী গঠন করা হয়েছে।",
      "ফুলবাড়ী নেত্রকোনা জেলার কমলাকান্দা উপজেলার লেঙ্গুরা ইউনিয়নের ভারত-বাংলাদেশ সীমান্তের একটি নিরিবিলি গ্রাম। এটি নেত্রকোনার একটি ঐতিহাসিক স্থান। গ্রামের মধ্য দিয়ে ভারতের মেঘালয় রাজ্য থেকে গারো পাহাড়ের মধ্য দিয়ে প্রবাহিত হয়েছে গণেশ্বরী নদী। আমাদের সীমান্তের মধ্যে বেশ কয়েকটি পাহাড় রয়েছে, এবং যতদূর সীমান্ত দেখা যায় পাহাড়ি রাজ্য মেঘালয় দেখা যায়। চারিদিকে অসংখ্য মেহগনি গাছের সারির নির্জন স্থানে সাত মুক্তিযোদ্ধাকে সমাহিত করা হয়েছে। এই স্থানটি সাত শহীদের মাজার হিসেবে পরিচিত।",
      "শেখ হাসিনা বিশ্ববিদ্যালয় 3 মার্চ 2019-এ তার প্রথম ছাত্রদের স্বাগত জানায় এবং অধ্যাপক ড. রফিক উল্লাহ খান প্রতিষ্ঠানের প্রতিষ্ঠাতা ভাইস চ্যান্সেলর হিসেবে দায়িত্ব পালন করেন। বিশ্ববিদ্যালয় এখন অস্থায়ী প্রাঙ্গণে চলছে। নেত্রকোনা শহরের অদূরে ৫০০ একর জমির ওপর প্রতিষ্ঠিত হবে বিশ্ববিদ্যালয়টি। বিশ্ববিদ্যালয়টি 1 অনুষদ, 3টি বিভাগ, 6 জন শিক্ষক, 90 জন শিক্ষার্থী নিয়ে কার্যক্রম শুরু করে। বিশ্ববিদ্যালয়ে এখন 2টি অনুষদ, 4টি বিভাগ, 11 জন শিক্ষক, 330 জন শিক্ষার্থী রয়েছে। শিক্ষার্থী ও শিক্ষকের সংখ্যা বাড়ছে। এই বিশ্ববিদ্যালয়ের মূল উদ্দেশ্য গবেষণায় উৎকর্ষের একটি নতুন স্তর এবং নতুন ধারণা এবং উদ্ভাবনের প্রচারের ক্ষেত্রে একটি অনন্য মাইলফলক অর্জন করা, সেইসাথে ভবিষ্যতের চ্যালেঞ্জ মোকাবেলায় সক্ষম আলোকিত এবং দক্ষ পেশাদারদের বিকাশের মাধ্যমে দেশ ও বিশ্ব সম্প্রদায়ের সেবা করা।",
      "নেত্রকোনা মেডিকেল কলেজ বাংলাদেশের নেত্রকোনার একটি সরকারি মেডিকেল কলেজ, যা 2018 সালে প্রতিষ্ঠিত এবং ঢাকা বিশ্ববিদ্যালয়ের সাথে অধিভুক্ত। 50 জন শিক্ষার্থীর প্রথম ব্যাচের ক্লাস 10 জানুয়ারী, 2019 তারিখে নেত্রকোনা সদর হাসপাতালের অস্থায়ী ক্যাম্পাসে শুরু হয়।",
    ];

    List<String> items = [
      'Images/Carousel/birishiri1.jpg',
      'Images/Carousel/dingapota.jpg',
      'Images/Carousel/Komola.jpg',
      'Images/Carousel/somessori.jpg',
      'Images/Carousel/ethinicCultural.png',
      'Images/Carousel/sevenMartyrs.png',
      'Images/Carousel/shuImage.png',
      'Images/Carousel/nmcImage.png',
    ];
    List <String> texts = [
      "বিরিশিরি",
      "ডিঙ্গাপোতা হাওর",
      "কমলা রাণী দিঘী",
      "সোমেশ্বরী নদী",
      "উপজাতীয় কালচারাল একাডেমী",
      "সাত শহীদের মাজার",
      "শেখ হাসিনা বিশ্ববিদ্যালয়",
      "নেত্রকোনা মেডিকেল কলেজ",
    ];
    return SafeArea(
      child: WillPopScope(
        onWillPop: ()=>_onBackButtonPressed(context),
        child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(                                     //Carousel
                          items: List<Widget>.generate(items.length, (int index) {
                            return InkWell(
                              onTap: (){
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) => Upozilla(image: items[index],name: texts[index],details: details[index],)));
                              },
                              child: Container(
                                width: carousel_width,                         //width
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  image: DecorationImage(
                                    image: AssetImage(items[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Text(
                                    texts[index],
                                    style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontFamily: 'Inter',),
                                  ),
                                ),
                              ),
                            );
                          }),
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 2),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 500),
                            //const Duration(microseconds: 500),
                            autoPlayCurve: Curves.easeInOutQuart,
                            height: 200,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            aspectRatio: 2.0,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: MediaQuery.of(context).size.height-300,
                  child: GridView.count(                 //Grid View
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: [
                        addDetails('জেলার তথ্য', 0),
                        addDetails('খবর', 1),
                        addDetails('হাসপাতাল', 2),
                        addDetails('ফায়ার সার্ভিস', 3),

                        addDetails('থানা পুলিশ', 5),
                        addDetails('স্বনামধন্য ব্যক্তিবর্গ',6),
                        addDetails('হেল্পলাইন', 7),
                        addDetails('আবাসিক হোটেল', 8),
                        addDetails('বাস টিকিট', 9),
                        addDetails('রেল টিকিট', 10),
                        addDetails('দর্শনীয় স্থান', 11),
                        addDetails('রেস্টুরেন্ট',12),
                        addDetails('প্রশিক্ষণ কেন্দ্র',13 ),
                        addDetails('ডাক্টার', 14),
                        addDetails('আইনজীবী', 15),
                      ],
                    ),
                ),
              ),
            ]
            ),
          ),
        ),
      )
      );
  }

 Future<bool> _onBackButtonPressed(BuildContext context) async{
      bool exitApp = await showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: const Text("Netrokona Helpline"),
              content: const Text("Do you want to close the app?"),
              actions: [
                TextButton(onPressed: (){
                      Navigator.of(context).pop(false);
                }, child: const Text("No")),

                 TextButton(onPressed: (){
                   exit(0);
                      // Navigator.of(context).pop(true);
                }, child: const Text("Yes")),

              ],
            );
          }
      );
      return exitApp ?? false;
  }
}

// add Details Function

Widget addDetails(
  String name,
  int imageIndex,
) {

  List pages = [                                             //List of pages
        ZilaInfo(),
        News(),
        Hospital(),
        Fire(),
        Fire(),
        Police(),
        Famous(),
        helpline(),
        Hotel(),
        Bus(),
        Rail(),
        Place(),
        Restuarant(),
        Training(),
        Doctor(),
        Lawer(),


  ];
  List<String> items = [                                    //List of images
    'Images/GridView/information.png',
    'Images/GridView/news.jpg',
    'Images/GridView/hospital.jpg',
    'Images/GridView/fireservice.jpg',
    'Images/GridView/ambulance.jpg',
    'Images/GridView/police.jpg',
    'Images/GridView/famous.png',
    'Images/GridView/help.jpg',
    'Images/GridView/hotel.jpg',
    'Images/GridView/bus.jpg',
    'Images/GridView/rail.png',
    'Images/GridView/historical.jpg',
    'Images/GridView/restuarant.jpg',
    'Images/GridView/training.jpg',
    'Images/GridView/doctor.jpg',
    'Images/GridView/lawer.jpg',
    'Images/GridView/lawer.jpg',
    'Images/GridView/lawer.jpg',


  ];

  return Builder(builder: (context) {                        //GrideView Details
    return InkWell(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 35.0,
                backgroundImage: AssetImage(items[imageIndex]),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text(name,
                style: TextStyle(
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => pages[imageIndex]));
      },
    );
  });
}
