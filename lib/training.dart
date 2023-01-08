import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('প্রশিক্ষণ কেন্দ্র',
          style: TextStyle(
              fontSize: 20.0
          ),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5,),
              tCenter("কারিগরি প্রশিক্ষণ কেন্দ্র", "রাজুর বাজার, নেত্রকোনা", "01712488039"),
              tCenter("মডার্ন কম্পিউটার প্রশিক্ষণ ইনস্টিটিউট", "বড় বাজার, নেত্রকোনা", "01711873504"),
              tCenter("ইউনিক কম্পিউটার", "বড় স্টেশন রোড, সাতপাই, নেত্রকোনা", "01714628946"),
              tCenter("স্কিলহাব আইটি", "চক্ষুহাসপাতাল রোড, সাতপাই,নেত্রকোনা", "01710236987"),
              tCenter("নেত্রকোনা কম্পিউটার ইনস্টিটিউট", "সাতপাই রেলক্রসিং, নেত্রকোনা", "01717226889"),
              tCenter("সেরা টেকনিক্যাল ট্রেনিং ইনস্টিটিউট", "বঙ্গবন্ধু মোড়,কাটলী, নেত্রকোনা", "01741325529"),
          ],
        )
      ),
    );
  }
}


Widget tCenter(String name,String  address,String phone){
  return Builder(
      builder: (context) {
        return Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(name,
                    style: TextStyle(
                      fontSize: 20.0,
                      // fontWeight: FontWeight.bold
                    ),),
                  subtitle: Text("স্থানঃ "+address,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18.0,
                    ),
                  ),
                  trailing: ElevatedButton(
                    child: Icon(Icons.call,

                    ),
                    onPressed: ()async{
                      await FlutterPhoneDirectCaller.callNumber(phone);
                    },
                  ),
                ),
              ),
            ),

          ],
        );
      }
  );
}
