import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/utils/colors.dart';

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
          backgroundColor: MEDCOLOR.ternery,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: const Text("PRAVIN"),
            trailing: CircleAvatar(
              radius: 40,
              backgroundColor: MEDCOLOR.secoundry,
              backgroundImage: AssetImage(doctors[1].image),
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
            onTap: (){},
            leading: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 175, 221, 243),
                    shape: BoxShape.circle),
                child: const Icon(
                  CupertinoIcons.person,
                  size: 40,
                  color: Colors.blue,
                )),
            title: const Text("Profile"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {},
            leading: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 175, 243, 180),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.green,
                )),
            title: const Text("Setting"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
                        onTap: () {},

            leading: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 157, 163, 240),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.notifications,
                  size: 40,
                  color: Color.fromARGB(255, 74, 64, 132),
                )),
            title: const Text("Notification"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
                        onTap: () {},

            leading: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 212, 243, 175),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.privacy_tip_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 66, 103, 1),
                )),
            title: const Text("Privacy"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
                        onTap: () {},

            leading: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 139, 216, 215),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.warning_amber_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 11, 120, 139),
                )),
            title: const Text("About"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(
            endIndent: 30,
            indent: 30,
          ),
          ListTile(
                        onTap: () {},

            leading: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 243, 175, 176),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.settings,
                  size: 40,
                  color: Color.fromARGB(255, 122, 5, 5),
                )),
            title: const Text("Log Out"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    ));
  }
}
