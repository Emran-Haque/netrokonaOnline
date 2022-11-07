import 'package:flutter/material.dart';

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
          addHospital("Netrokona Sadar Hospital","01775922357"),
          addHospital("Apollo Private Hospital","01711617041"),
          addHospital("Prime Hospital & Diagnostic Center","01971862092"),
          addHospital("Netrokona Ideal Hospital","01741024064"),
          addHospital("Netrokona Popular Hospital","01751584128"),
          addHospital("Netrokona Nursing Home","095161940"),
          addHospital("Shah Sultan Private Hospital Ltd","095162045"),
        ],
      ),
    ));
  }
}
 Widget addHospital(String name,String address){
  return  Padding(
    padding: const EdgeInsets.fromLTRB(1,5,1 ,5),
    child: ListTile(
      leading: CircleAvatar(child: Image.asset("Images/hospital.jpg")),
      title: Text(name),
      subtitle: Text("Phone: "+address),
      tileColor: Colors.cyanAccent,
      trailing: Icon(Icons.navigate_next),
    ),
  );

 }