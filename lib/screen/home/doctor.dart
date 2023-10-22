// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:medical/component/hospitalD.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/screen/home/home.dart';
import 'package:medical/screen/message/chatScreen.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/string.dart';
import 'package:url_launcher/url_launcher.dart';

class DoctorsL extends StatelessWidget {
  DoctorsL({super.key, required this.doctor, required this.hos});
  final DoctorModel doctor;
  final Hospital hos;
  final phone = "+91987654321";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: MEDCOLOR.primery,
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 12,
            width: double.maxFinite,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
               IconButton(
                onPressed: 
                   () {
                      Get.to(() => BottomNAvigation());
                    },
                   icon: Icon(
                      Icons.arrow_back_ios_rounded,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Doctors(
                  hos: hos,
                  doctor: doctor,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: SizedBox(
                child: ListView.builder(
                    itemCount: doctors.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.4,
                          margin: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MEDCOLOR.secoundry,
                              boxShadow: [
                                BoxShadow(color: MEDCOLOR.shad, blurRadius: 5)
                              ]),
                          child: SizedBox(
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                        radius: 30,
                                        backgroundColor: MEDCOLOR.secoundry,
                                        child: Image.asset(
                                          doctors[index].image,
                                          height: 50,
                                          width: 50,
                                        )),

                                    Column(
                                      children: [
                                        Text(
                                          doctors[index].title,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          doctors[index].degree,
                                          style: const TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    // SizedBox(width: 10,),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              15,
                                      width: MediaQuery.of(context).size.width /
                                          4.2,
                                      child: Image.asset(
                                        hospitals[index].image,
                                        fit: BoxFit.contain,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              MEDSTRING.special,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                              doctors[index].description,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Get.to(() => ChatScreen());
                                            },
                                            icon: Icon(
                                              Icons.message,
                                              color: MEDCOLOR.primery,
                                            )),
                                        
                                        IconButton(
                                            onPressed: () async {
                                             FlutterPhoneDirectCaller.callNumber(phone);
                                            },
                                            icon: Icon(Icons.call))
                                      ]),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ]),
                          ),
                        ),
                      );
                    })),
          ),
        ],
      ),
    )));
  }
}
