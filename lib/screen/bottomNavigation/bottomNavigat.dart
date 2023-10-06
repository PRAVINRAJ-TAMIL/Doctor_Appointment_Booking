import 'package:flutter/material.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/screen/appointment/appointmentScreen.dart';
import 'package:medical/screen/home/home.dart';
import 'package:medical/screen/me/me.dart';
import 'package:medical/screen/message/message.dart';

class BottomNAvigation extends StatefulWidget {
  const BottomNAvigation({super.key});

  @override
  State<BottomNAvigation> createState() => _BottomNAvigationState();
}

class _BottomNAvigationState extends State<BottomNAvigation> {
  int _select = 0;
  final _screen = [
    Home(),
    AppointmentSchudele(),
    Message(),
    Me(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _screen[_select],
      bottomNavigationBar: Container(
        height: 65,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Appointment"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_max_outlined), label: "Message"),
                 BottomNavigationBarItem(
                icon: Icon(Icons.person_4), label: "Me")
          ],
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: (intex) {
            setState(() {
              _select = intex;
            });
          },
          selectedLabelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          currentIndex: _select,
        ),
      ),
    ));
  }
}
