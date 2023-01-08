import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class fClass extends StatefulWidget {
String? image,name,designation,details;
   fClass({Key? key,this.image,this.name,this.designation,this.details}) : super(key: key);

  @override
  State<fClass> createState() => _ClassState();
}

class _ClassState extends State<fClass> {
  @override
  Widget build(BuildContext context) {
    print(widget.details.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),

            Text(widget.designation.toString(),                     //Designation
              style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                color: Colors.redAccent
              ),
            ),

            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.details.toString(),                     //details
                style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
