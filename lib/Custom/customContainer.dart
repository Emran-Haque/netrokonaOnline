import 'package:flutter/material.dart';
import 'package:myapp/Custom/doctorProfile.dart';

import 'FamProfile.dart';

Widget myContainer(String? name,String? subname,String? image,String? details,String? category,String? call, int cls){
  List pages=[
    fClass(image:image,name: name,designation:subname,details:details),
    DoctorProfile(image:image,name:name,degree:subname,category:category,chamber: details,phone:call),
  ];
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Builder(
      builder: (context) {
        return InkWell(
          onTap: (){Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => pages[cls]));},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red,],
                tileMode: TileMode.clamp,
              ),
            ),
            height: MediaQuery
                .of(context)
                .size
                .height * 0.1,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name.toString(),
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Raleway",
                    ),
                  ),
                  Text(subname.toString()),
                ],
              ),
            ),

          ),
        );
      }
    ),
  );
}