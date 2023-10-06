import 'package:flutter/material.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/model.dart';
import 'package:medical/screen/appointment/upComing.dart';




class AppointmentSchudele extends StatefulWidget {
  const AppointmentSchudele({super.key});

  @override
  State<AppointmentSchudele> createState() => _AppointmentSchudeleState();
}

class _AppointmentSchudeleState extends State<AppointmentSchudele> {
  int _buindex = 1;

  final _apponment = [
    UPCOMING(doctor: doctors[3], hos: hospitals[3],),
    UPCOMING(doctor: doctors[1], hos: hospitals[0],),
     UPCOMING(doctor: doctors[4], hos: hospitals[4],),
    Container(child: Center(child: Text("UpComing"))),
    Container(child: Center(child: Text("Canceled"))),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Appointment Schudele"),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 14,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 11),
                color: Color.fromARGB(255, 240, 252, 241),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              _buindex = 0;
                            });
                          },
                          child: Container(
                              height: double.maxFinite,

                              // padding: EdgeInsets.symmetric(horizontal: 14,vertical: 25),

                              decoration: BoxDecoration(
                                  color: _buindex == 0
                                      ? Color.fromARGB(197, 146, 238, 150)
                                      : Color.fromARGB(255, 199, 234, 253),
                                  borderRadius: BorderRadius.circular(24)),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text(
                                  "Completed",
                                ),
                              ))),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _buindex = 1;
                            });
                          },
                          child: Container(
                              height: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: _buindex == 1
                                      ? Color.fromARGB(197, 146, 238, 150)
                                      : Color.fromARGB(255, 199, 234, 253),
                                  borderRadius: BorderRadius.circular(24)),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text("UpComing"),
                              ))),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _buindex = 2;
                            });
                          },
                          child: Container(
                              height: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: _buindex == 2
                                      ? Color.fromARGB(197, 146, 238, 150)
                                      : Color.fromARGB(255, 199, 234, 253),
                                  borderRadius: BorderRadius.circular(24)),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text("Canceled"),
                              ))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              _apponment[_buindex]
            ],
          ),
        ),
      )),
    );
  }
}
