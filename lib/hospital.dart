import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:myapp/Custom/profile.dart';

class Hospital extends StatefulWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      appBar: AppBar(
        title: Text("হাসপাতাল",
        style: TextStyle(
            fontSize: 20.0,
        ),),
      ),
      body: ListView(
        children: [
          addHospital("নেত্রকোনা সদর হাসপাতাল","01775922357"),
          addHospital("অ্যাপোলো প্রাইভেট হাসপাতাল","01711617041"),
          addHospital("প্রাইম হাসপাতাল ও ডায়াগনস্টিক সেন্টার","01971862092"),
          addHospital("নেত্রকোনা আইডিয়াল হাসপাতাল","01741024064"),
          addHospital("নেত্রকোনা পপুলার হাসপাতাল","01751584128"),
          addHospital("নেত্রকোনা নার্সিং হোম","095161940"),
          addHospital("শাহ সুলতান প্রাইভেট হাসপাতাল লি.","095162045"),
        ],
      ),
    ));
  }
}
 Widget addHospital(String name,String address){
  return  Padding(
    padding: const EdgeInsets.fromLTRB(1,5,1 ,5),
    child: Builder(
      builder: (context) {
        return InkWell(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan
            ),
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("Images/GridView/hospital.jpg")),
              title: Text(name),
              subtitle: Text("Phone: "+address),
              trailing: ElevatedButton(child: Icon(Icons.call),
                  onPressed: ()async{
                    await FlutterPhoneDirectCaller.callNumber(address);
                  },
              ),
            ),
          ),

        );
      }
    ),
  );

 }