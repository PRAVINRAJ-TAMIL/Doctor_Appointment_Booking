import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Me extends StatefulWidget {
  const Me({super.key});

  @override
  State<Me> createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: Text("HELLO!"),
            trailing: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.purple,
            ),
          ),
            Divider(
            endIndent: 30,
            indent: 30,
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: (){},
            leading: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 175, 221, 243),
                    shape: BoxShape.circle),
                child: Icon(
                  CupertinoIcons.person,
                  size: 40,
                  color: Colors.blue,
                )),
            title: Text("Profile"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {},
            leading: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 175, 243, 180),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.green,
                )),
            title: Text("Setting"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
                        onTap: () {},

            leading: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 157, 163, 240),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.notifications,
                  size: 40,
                  color: Color.fromARGB(255, 74, 64, 132),
                )),
            title: Text("Notification"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
                        onTap: () {},

            leading: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 243, 175),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.privacy_tip_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 66, 103, 1),
                )),
            title: Text("Privacy"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
                        onTap: () {},

            leading: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 139, 216, 215),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.warning_amber_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 11, 120, 139),
                )),
            title: Text("About"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            endIndent: 30,
            indent: 30,
          ),
          ListTile(
                        onTap: () {},

            leading: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 175, 176),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.settings,
                  size: 40,
                  color: Color.fromARGB(255, 122, 5, 5),
                )),
            title: Text("Log Out"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    ));
  }
}
