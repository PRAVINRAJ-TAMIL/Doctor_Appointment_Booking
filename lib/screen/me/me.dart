import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';

class Me extends StatefulWidget {
  const Me({super.key});

  @override
  State<Me> createState() => _MeState();
}

class _MeState extends State<Me> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  File? imageFile;

  void selectimg() {}

  @override
  Widget build(BuildContext context) {
    String? _mail = _auth.currentUser!.email;
    return SafeArea(
        child: Scaffold(
      backgroundColor: MEDCOLOR.bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: Text(
              '$_mail',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            trailing: Stack(
              children: [
               Image.asset("lib/assets/image/logo.png")
               
              ],
            ),
          ),
          const Divider(
            endIndent: 30,
            indent: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              height: MediaQuery.of(context).size.height/8,
              width:MediaQuery.of(context).size.width/6,
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 175, 221, 243),
                    shape: BoxShape.circle),
                child: const Icon(
                  CupertinoIcons.person,
                  size: 30,
                  color: Colors.blue,
                )),
            title: const Text("Profile"),
            trailing: IconButton(
                  onPressed: () {
                showDialog(                 
                      context: context,
                      builder: (ctx) => AlertDialog(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),

                        backgroundColor: Colors.white,
                        title: Lottie.asset(MEDIMAGE.cmson,
                         
                           fit: BoxFit.cover),
                       
                      ),
                    );},
                  icon: Icon(Icons.arrow_forward_ios_rounded))
          ),
          ListTile(
           
            leading: Container(
              height: MediaQuery.of(context).size.height/8,
              width:MediaQuery.of(context).size.width/6,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: MEDCOLOR.green, shape: BoxShape.circle),
                child:
                    const Icon(Icons.settings, size: 30, color: Colors.green)),
            title: const Text("Setting"),
            trailing:IconButton(
                    onPressed: () {
                showDialog(                 
                      context: context,
                      builder: (ctx) => AlertDialog(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),

                        backgroundColor: Colors.white,
                        title: Lottie.asset(MEDIMAGE.cmson,
                         
                           fit: BoxFit.cover),
                       
                      ),
                    );},
                  icon: Icon(Icons.arrow_forward_ios_rounded))
          ),
          ListTile(
          
            leading: Container(
              height: MediaQuery.of(context).size.height/8,
              width:MediaQuery.of(context).size.width/6,
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 157, 163, 240),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.notifications,
                  size: 30,
                  color: Color.fromARGB(255, 74, 64, 132),
                )),
            title: const Text("Notification"),
            trailing: IconButton(
                    onPressed: () {
                showDialog(                 
                      context: context,
                      builder: (ctx) => AlertDialog(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),

                        backgroundColor: Colors.white,
                        title: Lottie.asset(MEDIMAGE.cmson,
                         
                           fit: BoxFit.cover),
                       
                      ),
                    );},
                  icon: Icon(Icons.arrow_forward_ios_rounded))
          ),
          ListTile(
           
            leading: Container(
              height: MediaQuery.of(context).size.height/8,
              width:MediaQuery.of(context).size.width/6,
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 212, 243, 175),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.privacy_tip_outlined,
                  size: 30,
                  color: Color.fromARGB(255, 66, 103, 1),
                )),
            title: const Text("Privacy"),
            trailing:IconButton(
                   onPressed: () {
                showDialog(                 
                      context: context,
                      builder: (ctx) => AlertDialog(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),

                        backgroundColor: Colors.white,
                        title: Lottie.asset(MEDIMAGE.cmson,
                         
                           fit: BoxFit.cover),
                       
                      ),
                    );},
                  icon: Icon(Icons.arrow_forward_ios_rounded))
          ),
          ListTile(
           
            leading: Container(
              height: MediaQuery.of(context).size.height/8,
              width:MediaQuery.of(context).size.width/6,
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 139, 216, 215),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.warning_amber_rounded,
                  size: 30,
                  color: Color.fromARGB(255, 11, 120, 139),
                )),
            title: const Text("Version"),
            trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Center(child: const Text("App Version")),
                        actions: <Widget>[
                          Center(child: Text("MedTez")),
                          Center(child: Text("Version - 0.0")),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    );

                    // child: const Text("Show alert Dialog box"),
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded))
          ),
          const Divider(
            endIndent: 30,
            indent: 30,
          ),
          ListTile(
              // ()async {
              //               await FirebaseAuth.instance.signOut();
              //             },

              leading: Container(
                height: MediaQuery.of(context).size.height/8,
              width:MediaQuery.of(context).size.width/6,
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 243, 175, 176),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.settings,
                    size: 30,
                    color: Color.fromARGB(255, 122, 5, 5),
                  )),
              title: const Text("Log Out"),
              trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Are You Sure To Logout?"),
                        actions: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                             backgroundColor: MEDCOLOR.butcolor,
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),),
                                 onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: const Text("Close"),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                             backgroundColor: MEDCOLOR.red,
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),),
                                 onPressed: () async {
                                  await FirebaseAuth.instance.signOut();
                                },
                               
                                child: const Text("Logout"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    );

                    // child: const Text("Show alert Dialog box"),
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded))),
        ],
      ),
    ));
  }
}
