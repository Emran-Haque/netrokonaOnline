import 'dart:io';
import 'package:flutter/material.dart';
import 'package:myapp/helpline.dart';
import 'package:myapp/hotel.dart';
import 'package:myapp/main.dart';
import 'package:share/share.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(

        children: [
          UserAccountsDrawerHeader(accountName: Text(""),
              accountEmail: Text("Netrokona Helpline",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
              ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/navBar.png"),
              fit: BoxFit.cover

            ),
          ),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Test()));
            },
            leading: Icon(Icons.home),
            title: Text("Home",
            style: TextStyle(
              fontSize: 18.0
            ),
            ),
          ),

             ListTile(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => WebView(
                initialUrl: "https://www.facebook.com/02ashemran/",
                javascriptMode: JavascriptMode.unrestricted,

              ),));
            },
            leading: Icon(Icons.facebook_sharp),
            title: Text("Join us on Facebook",
            style: TextStyle(
              fontSize: 18.0
            ),
            ),
          ),


          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("About",
            style: TextStyle(
              fontSize: 18.0
            ),
            ),
          ),
            ListTile(
            leading: Icon(Icons.privacy_tip_outlined),
            title: Text("Privacy",
            style: TextStyle(
              fontSize: 18.0
            ),
            ),
          ),

          ListTile(
            onTap: (){
               Share.share("https://github.com/Emran-Haque/netrokonaOnline");
            },
            leading: Icon(Icons.share),
            title: Text("Share",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
          ),

  ListTile(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => WebView(
                  initialUrl: "https://docs.google.com/forms/d/e/1FAIpQLSe_TBYoBLyJAGSGDVWoOxtikBGsgAYsAsv38bo07HYeM0VKnA/viewform?usp=sf_link",
                  javascriptMode: JavascriptMode.unrestricted,)));
            },
            leading: Icon(Icons.bug_report),
            title: Text("Report any Bug",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
          ),


          Divider(),
          Builder(
            builder: (context) {
              return ListTile(
                onTap: ()=>showDialog(
                  context: context,
                  builder: (context)=> AlertDialog(
                    title: const Text("Netrokona Helpline"),
                    content: const Text("Do you want to close the app?"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop(false);
                      }, child: const Text("No")),
                      TextButton(onPressed: (){
                        exit(0);
                        // Navigator.of(context).pop(true);
                      }, child: const Text("Yes")),
                    ],
                  ),
                ),
                leading: Icon(Icons.exit_to_app),
                title: Text("Exit",
                style: TextStyle(
                  fontSize: 18.0,
                ),
                ),
              );
            }
          ),


        ],
      ),
    );
  }
}
