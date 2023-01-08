import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DoctorProfile extends StatefulWidget {
String? image,name,degree,category,chamber,phone;
   DoctorProfile({Key? key,this.image,this.name,this.degree,this.category,this.chamber,this.phone}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width/5,
              // radius: 75.0,
              backgroundColor: Colors.grey.shade800,
              backgroundImage: AssetImage(widget.image.toString()),
            ),

            SizedBox(height: 10.0,),

            Text(widget.name.toString(),                        //Name
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),

            Center(
              child: Text(widget.degree.toString(),
                style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                ),
              ),
            ),

            SizedBox(height: 20,),
            Text("বিশেষজ্ঞঃ "+widget.category.toString(),                     //Designation
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                color: Colors.green
              ),
            ),

            SizedBox(height: 40,),

            Text("চেম্বার",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent
              ),
            ),
            Text(widget.chamber.toString(),                           //Address
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            ElevatedButton(onPressed: ()async{                          //Phone Number
              await FlutterPhoneDirectCaller.callNumber(widget.phone.toString());
            }, child: Text("Call Now")),
          ],
        ),
      ),
    );
  }
}
