import 'package:flutter/material.dart';
class Upozilla extends StatefulWidget {
  String? image;
   Upozilla({Key? key,this.image}) : super(key: key);

  @override
  State<Upozilla> createState() => _UpozillaState();
}

class _UpozillaState extends State<Upozilla> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children:[ Container(
            height: MediaQuery.of(context).size.height/1.50,
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                image: DecorationImage(
                  image: AssetImage(widget.image.toString()),
                  fit: BoxFit.cover,
                ),
              ),
          ),
          Positioned(child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height/2.70,
              width: MediaQuery.of(context).size.width/1.05,
              child:Text("",                                       //text of carousel

              style: TextStyle(

              ),
              ),
            ),
          ),

          )
          ]
        ),
      ),
    );
  }
}
