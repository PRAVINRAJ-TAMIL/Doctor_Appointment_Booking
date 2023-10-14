// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical/screen/appointment/appointmentScreen.dart';
import 'package:medical/screen/home/home.dart';
import 'package:medical/screen/me/me.dart';
import 'package:medical/screen/message/message.dart';
import 'package:medical/utils/colors.dart';

class BottomNAvigation extends StatefulWidget {
  const BottomNAvigation({super.key});

  @override
  State<BottomNAvigation> createState() => _BottomNAvigationState();
}

class _BottomNAvigationState extends State<BottomNAvigation> {
  int _select = 0;
  final _screen = [
    const Home(),
    const AppointmentSchudele(),
    const Message(),
    const Me(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _screen[_select],
            bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
                    items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule_rounded), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded), label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_4), label: "Me")
          ],
backgroundColor: MEDCOLOR.primery,
          selectedItemColor: MEDCOLOR.secoundry,
          unselectedItemColor: MEDCOLOR.text,
          type: BottomNavigationBarType.fixed,
          onTap: (intex) {
            setState(() {
              _select = intex;
            });
          },
          selectedLabelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          currentIndex: _select,
        ),
      ),
    ));
  }
}
