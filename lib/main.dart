import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ambulance.dart';
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
import 'package:myapp/upazila.dart';
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
    List<String> items = [
      'Images/birishiri1.jpg',
      'Images/birishiri2.jpg',
      'Images/dingapota.jpg',
      'Images/Komola.jpg',
      'Images/somessori.jpg',
    ];
    List <String> texts = [
      "Birishiri",
      "Birishir 2",
      "Dingapota Haor",
      "Komola Dighi",
      "Somessori"
    ];
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            //AppBar

            SliverAppBar(
              pinned: true,
              leading: IconButton(icon: Icon(Icons.menu,), onPressed: () {},),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
              ],
              expandedHeight: 200,
              backgroundColor: Colors.orangeAccent[100],
              flexibleSpace: FlexibleSpaceBar(
                background: CarouselSlider(                                     //Carousel
                  items: List<Widget>.generate(items.length, (int index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => Upozilla(image: items[index],)));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.height,
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
              ),
            ),

            SliverGrid.count(                 //Grid View
              crossAxisCount: 3,

              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                addDetails('জেলার তথ্য', 0),
                addDetails('খবর', 1),
                addDetails('হাসপাতাল', 2),
                addDetails('ফায়ার সার্ভিস', 3),
                addDetails('এ্যাম্বুলেন্স', 4),
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
                addDetails('সাংবাদিক', 16),


              ],
            )
          ],
        ),
      ),
    );
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
        Ambulance(),
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
        Journalist()

  ];
  List<String> items = [                                    //List of images
    'Images/information.png',
    'Images/news.jpg',
    'Images/hospital.jpg',
    'Images/fireservice.jpg',
    'Images/ambulance.jpg',
    'Images/police.jpg',
    'Images/famous.png',
    'Images/help.jpg',
    'Images/hotel.jpg',
    'Images/bus.jpg',
    'Images/rail.png',
    'Images/historical.jpg',
    'Images/restuarant.jpg',
    'Images/training.jpg',
    'Images/doctor.jpg',
    'Images/lawer.jpg',
    'Images/reporter.png'

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
