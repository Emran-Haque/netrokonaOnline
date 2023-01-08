import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class helpline extends StatefulWidget {
  const helpline({Key? key}) : super(key: key);

  @override
  State<helpline> createState() => _helplineState();
}

class _helplineState extends State<helpline> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "হেল্পলাইন",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.fromLTRB(1,5,1,5),
          children: [
            Text('ফেসবুক গ্রুপ:',
            textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25.0,
                decoration: TextDecoration.underline,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Facehelp()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height/12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[100]
                ),
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "Netrokona Helpline",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            Text('হেল্পলাইন:',
              textAlign: TextAlign.left,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 25.0,

              ),
            ),
            addSheba("জরুরী সেবা","999"),
            addSheba("শিশু সহায়তা","1098"),
            addSheba("নারী ও শিশু নির্যাতন","109"),
            addSheba("জাতীয় পরিচয়পত্র","105"),
            addSheba("সরকারী আইন সেবা","16430"),
            addSheba("দুর্যোগের আগাম বার্তা","10941"),
            addSheba("দুদক হটলাইন","106"),
            addSheba("তথ্য সেবা","333"),
          ],
        ),
      ),
    );
  }
}

class Facehelp extends StatefulWidget {
  const Facehelp({Key? key}) : super(key: key);

  @override
  State<Facehelp> createState() => _FacehelpState();
}

class _FacehelpState extends State<Facehelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
          initialUrl: 'https://www.facebook.com/groups/179919366005450',
          javascriptMode: JavascriptMode.unrestricted,

      ),
    );
  }
}

Widget addSheba(String name,String  subname){
  return ListTile(
    title: Text(name,
    style: TextStyle(
        fontWeight: FontWeight.bold
    ),),
    subtitle: Text("Call "+subname),
    leading: CircleAvatar(backgroundImage: AssetImage('Images/GridView/help.jpg')),
    trailing: ElevatedButton(
      child: Icon(Icons.call),
      onPressed: ()async{
        await FlutterPhoneDirectCaller.callNumber(subname);
      },
    ),
  );
}