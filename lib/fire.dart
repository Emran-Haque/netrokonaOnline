import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Fire extends StatefulWidget {
  const Fire({Key? key}) : super(key: key);

  @override
  State<Fire> createState() => _FireState();
}

class _FireState extends State<Fire> {

  @override
  Widget build(BuildContext context) {
    var cHeiht = MediaQuery.of(context).size.height/4;
    return Scaffold(
      appBar: AppBar(
        title: Text("ফায়ার সার্ভিস",
              style: TextStyle(fontSize: 20.0,),
        ),
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
                    image: AssetImage("Images/GridView/fireservice.jpg"),)
              ),
            ),
              Container(
                height: MediaQuery.of(context).size.height - cHeiht,
                child: ListView(
                    children: [
                      addFire("নেত্রকোনা ফায়ার স্টেশন","০১৭৮৯৭৪৪২১২"),
                      addFire("মোহনগঞ্জ ফায়ার স্টেশন","০১৭৩০০০২৩৮১"),
                      addFire("কেন্দুয়া ফায়ার স্টেশন","০১৭৭৯২২৫৭৭৭"),
                      addFire("কলমাকান্দা ফায়ার স্টেশন","০১৭০০৯৫৭০১০"),
                      addFire("মদন ফায়ার স্টেশন","০১৭১৯৫১১৯৮৪"),
                      addFire("দূর্গাপুর ফায়ার স্টেশন","০১৭২৮১৫৩০৭৭"),
                      addFire("আটপাড়া ফায়ার স্টেশন","০১৭৩৪২৮৮৬৯৮"),
                      addFire("বারহাট্টা ফায়ার স্টেশন","০১৭২৪৬৭০২২২"),
                      addFire("পূর্বধলা ফায়ার স্টেশন","০১৭৪৩৮৩৭৯৭৯"),
                    ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

Widget addFire(String name,String phone){
  return  Padding(
    padding: const EdgeInsets.fromLTRB(1,5,1 ,5),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.cyan
      ),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("Images/GridView/fireservice.jpg")),
        title: Text(name),
        subtitle: Text("ফোন: "+phone),
        trailing: ElevatedButton(
          child: Icon(Icons.call),
          onPressed: ()async{
            await FlutterPhoneDirectCaller.callNumber(phone);
          },
        ),
      ),
    ),
  );

}