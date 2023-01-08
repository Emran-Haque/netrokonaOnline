import 'package:flutter/material.dart';
class Upozilla extends StatefulWidget {
  String? image,name,details;
   Upozilla({Key? key,this.image,this.name,this.details}) : super(key: key);

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
          children:[
            Stack(
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
                Positioned(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(widget.name.toString(),
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
      ]
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
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Text(widget.details.toString(),                                       //text of carousel
                  style: TextStyle(
                      fontSize: 20.0,
                  ),
                  ),
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
