// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:medical/component/aboutHospital.dart';
import 'package:medical/component/doctorList.dart';
import 'package:medical/component/hospitalD.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/screen/message/chatScreen.dart';
import 'package:medical/utils/colors.dart';

class HospitalDetail extends StatelessWidget {
  HospitalDetail({super.key, required this.hos, required this.doctor});
  final Hospital hos;
  final DoctorModel doctor;
  final phone = "+91987654321";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
        backgroundColor: MEDCOLOR.secoundry,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => const BottomNAvigation());
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14, top: 10),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.more_vert_sharp),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              HosptitalLogo(hos: hos, docor: doctor),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => const ChatScreen());
                      },
                      child: const Icon(Icons.message)),
                  const SizedBox(
                    width: 50,
                  ),
                  IconButton(
                      onPressed: () async {
                        FlutterPhoneDirectCaller.callNumber(phone);
                      },
                      icon: Icon(Icons.call))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                    color: MEDCOLOR.secoundry,
                    boxShadow: [
                      BoxShadow(blurRadius: 3, color: MEDCOLOR.primery)
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: AboutHospital(hos: hos),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DoctorList(
                        doctor: doctor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
