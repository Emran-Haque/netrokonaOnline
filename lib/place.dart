import 'package:flutter/material.dart';

import 'Custom/CarouselDetails.dart';
class Place extends StatefulWidget {
  const Place({Key? key}) : super(key: key);

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('দর্শনীয় স্থান',
          style: TextStyle(
              fontSize: 20.0
          ),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              child: GridView.count(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: [
                      hisPlace(0),
                      hisPlace(1),
                      hisPlace(2),
                      hisPlace(3),
                      hisPlace(4),
                      hisPlace(5),
                ],
              ),
            ),
          )
        ),
      ),
    );;
  }
}

Widget hisPlace(int index){

  List details=[
    "বিরিশিরি নেত্রকোনা জেলার দুর্গাপুর উপজেলায় অবস্থিত একটি ঐতিহ্যবাহী গ্রাম। বিরিশিরি নেত্রকোনার একটি বিখ্যাত পর্যটন স্থান। প্রতি বছর প্রচুর মানুষ এই আশ্চর্যজনক প্রাকৃতিক সৌন্দর্য দেখতে যান। বিরিশিরির বিজয়পুরে রয়েছে আকর্ষণীয় সিরামিক পাহাড় এবং নীল জলের হ্রদ। বিজয়পুরের এই সিরামিক পাহাড় এবং সমতল দৈর্ঘ্য প্রায় 16 কিলোমিটার এবং প্রস্থ 600 মিটার। হ্রদের নীল জল সমস্ত ক্লান্তি এবং ক্লান্তি নিমিষেই দূর করে। হ্রদের নীল জলের প্রধান উৎস সোমেশ্বরী নদী। ",
    "নেত্রকোনা জেলার মোহনগঞ্জ উপজেলায় অবস্থিত ডিঙ্গাপোতা হাওর দেশের অন্যতম বৃহত্তম হাওর। এই হাওরের সৌন্দর্য ঋতু থেকে ঋতুতে বিভিন্ন রূপে ফুটে ওঠে। এটি নেত্রকোনার একটি অত্যাশ্চর্য পর্যটন স্পট। বর্ষাকালে হাওরের পানির স্রোত এবং শুষ্ক মৌসুমে চারপাশের অপরূপ সৌন্দর্য দেখে মুগ্ধ হন প্রকৃতিপ্রেমী দর্শনার্থীরা।",
    "ঐতিহ্যবাহী কমলা রানীর দীঘি দুর্গাপুর উপজেলা সদর থেকে তিন কিলোমিটার দূরে বিরিশিরি ইউনিয়ন পরিষদের কাছে অবস্থিত। এটি নেত্রকোনার একটি পর্যটন স্পট যা প্রকৃতির কাছে নিতে পারে। অনেকের কাছে এটি সাগর দীঘি নামেও পরিচিত।",
    "সোমেশ্বরী নদী ও এর সৌন্দর্য উপভোগ করতে আপনাকে যেতে হবে নেত্রকোনা জেলার দুর্গাপুর উপজেলায়। সোমেশ্বরী নদী ভারতের মেঘালয়ের গারো পাহাড়ের সিমসাংগ্রী থেকে উৎপন্ন হয়ে দুর্গাপুরে প্রবেশ করেছে। এটি দেখার জন্য একটি বিখ্যাত পর্যটক আকর্ষণ। সোমেশ্বর পাঠক এই এলাকাটি অনেক আগে দখল করেন এবং তাঁর নামানুসারে এটি সোমেশ্বরী নদী নামে পরিচিতি লাভ করে। বছরের বিভিন্ন সময়ে সোমেশ্বরী নদীর আলাদা সৌন্দর্য থাকে। শীতে পানি কমলেও চির-পরিষ্কার পানির সোমেশ্বরী নদী যেন বর্ষায় তার যৌবন ফিরে পায়।",
    "বৃহত্তর ময়মনসিংহের ক্ষুদ্র নৃ-গোষ্ঠীর মধ্যে হাজং, কোচ, ডালু, মান্দাই, বানাই গোষ্ঠীর সংস্কৃতি সংরক্ষণের জন্য প্রাথমিকভাবে উপজাতীয় কালচারাল একাডেমী গঠন করা হয়েছে।",
    "ফুলবাড়ী নেত্রকোনা জেলার কমলাকান্দা উপজেলার লেঙ্গুরা ইউনিয়নের ভারত-বাংলাদেশ সীমান্তের একটি নিরিবিলি গ্রাম। এটি নেত্রকোনার একটি ঐতিহাসিক স্থান। গ্রামের মধ্য দিয়ে ভারতের মেঘালয় রাজ্য থেকে গারো পাহাড়ের মধ্য দিয়ে প্রবাহিত হয়েছে গণেশ্বরী নদী। আমাদের সীমান্তের মধ্যে বেশ কয়েকটি পাহাড় রয়েছে, এবং যতদূর সীমান্ত দেখা যায় পাহাড়ি রাজ্য মেঘালয় দেখা যায়। চারিদিকে অসংখ্য মেহগনি গাছের সারির নির্জন স্থানে সাত মুক্তিযোদ্ধাকে সমাহিত করা হয়েছে। এই স্থানটি সাত শহীদের মাজার হিসেবে পরিচিত।",
    //""
  ];

  List<String> items = [
    'Images/Carousel/birishiri1.jpg',
    'Images/Carousel/dingapota.jpg',
    'Images/Carousel/Komola.jpg',
    'Images/Carousel/somessori.jpg',
    'Images/Carousel/ethinicCultural.png',
    'Images/Carousel/sevenMartyrs.png',
    //''
  ];
  List <String> texts = [
    "বিরিশিরি",
    "ডিঙ্গাপোতা হাওর",
    "কমলা রাণী দিঘী",
    "সোমেশ্বরী নদী",
    "উপজাতীয় কালচারাল\n         একাডেমী",
    "সাত শহীদের মাজার",
   // ""

  ];

  return Builder(
    builder: (context) {
      return InkWell(
        onTap: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Upozilla(image: items[index],name: texts[index],details: details[index],)));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            image: DecorationImage(
              image: AssetImage(items[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(texts[index],
                    style: TextStyle(
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
  );
}