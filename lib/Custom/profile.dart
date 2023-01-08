import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Class extends StatefulWidget {

  const Class({Key? key}) : super(key: key);

  @override
  State<Class> createState() => _ClassState();
}

class _ClassState extends State<Class> {
  var image= 'Images/information.png';
  var phone = "01706656865";
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
              backgroundImage: AssetImage(image),
            ),

            SizedBox(height: 10.0,),

            Text("Full Name",                        //Name
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
            ),

            Text("Designation",                     //Designation
            style: TextStyle(
              fontSize: 18.0,
              fontStyle: FontStyle.italic
            ),
            ),

            SizedBox(height: 40,),

            Text("Chamber",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent
            ),
            ),
            Text("Address",                           //Address
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            ElevatedButton(onPressed: ()async{                          //Phone Number
              await FlutterPhoneDirectCaller.callNumber(phone);
            }, child: Text("Call Now")),
          ],
        ),
      ),
    );
  }
}
