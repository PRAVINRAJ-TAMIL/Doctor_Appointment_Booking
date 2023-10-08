// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/screen/appointment/canceled.dart';
import 'package:medical/screen/appointment/completed.dart';
import 'package:medical/screen/appointment/upComing.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/string.dart';




class AppointmentSchudele extends StatefulWidget {
  const AppointmentSchudele({super.key});

  @override
  State<AppointmentSchudele> createState() => _AppointmentSchudeleState();
}

class _AppointmentSchudeleState extends State<AppointmentSchudele> {
  int _buindex = 1;

  final _apponment = [
    Completed(doctor: doctors[1], hos: hospitals[0],),
    UPCOMING(doctor: doctors[3], hos: hospitals[3],),
    Canceled(doctor: doctors[4], hos: hospitals[5],),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
            backgroundColor: MEDCOLOR.ternery,
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
               const SizedBox(
                height: 10,
              ),
              Text(MEDSTRING.appointment_schu,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              const SizedBox(
                height: 2,
              ),  const Divider(
              indent: 20,
              endIndent: 20,
              // thickness: 1,
              color:Color.fromARGB(255, 118, 118, 118),
            ), const SizedBox(
                height: 2,
              ), 
              Container(
                height: MediaQuery.of(context).size.height / 17,
                width: double.maxFinite,
                // margin: EdgeInsets.symmetric(horizontal: 5),
                color: MEDCOLOR.secoundry,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
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

                                decoration: BoxDecoration(
                                  color: _buindex == 0
                                      ? const Color.fromARGB(197, 146, 238, 150)
                                      : MEDCOLOR.primery,
                                  borderRadius: BorderRadius.circular(24)),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text(MEDSTRING.complet
                                  
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
                                      ? const Color.fromARGB(197, 146, 238, 150)
                                      : MEDCOLOR.primery,
                                  borderRadius: BorderRadius.circular(24)),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text(MEDSTRING.upcome),
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
                                      ? const Color.fromARGB(197, 146, 238, 150)
                                      : MEDCOLOR.primery,
                                  borderRadius: BorderRadius.circular(24)),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text(MEDSTRING.canceled),
                              ))),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _apponment[_buindex]
            ],
          ),
        ),
      )),
    );
  }
}
