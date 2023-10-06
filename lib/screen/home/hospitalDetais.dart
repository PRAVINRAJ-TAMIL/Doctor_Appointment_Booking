import 'package:flutter/material.dart';
import 'package:medical/component/aboutHospital.dart';
import 'package:medical/component/doctorList.dart';
import 'package:medical/component/hospitalD.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/model.dart';
import 'package:medical/screen/home/home.dart';
import 'package:medical/screen/message/chatScreen.dart';

class HospitalDetail extends StatelessWidget {
  const HospitalDetail({super.key, required this.hos, required this.doctor});
final Hospital hos;
final DoctorModel doctor;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                        Navigator.pop(context,MaterialPageRoute(builder: (context)=>Home()));
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.more_vert_sharp),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 30,
              ),
                    HosptitalLogo(hos: hos),
                     SizedBox(
                height: 20,
              ),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap:(){
                                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatScreen()));

                          },
                          child: Icon(Icons.message)),
                           SizedBox(
                width: 50,
              ),
                        Icon(Icons.call),
                      ],
                    ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                    color: Color.fromARGB(206, 239, 237, 237),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Color.fromARGB(64, 208, 204, 204))
                    ]),
                child: Column(
                  children:[

                    SizedBox(height: 30,),
                    AboutHospital(hos: hos),
                  

                    SizedBox(height: 30,),
                    DoctorList(doctor:doctor),
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

  // List doctor_image = [
  //   "lib/assets/image/doctor1.png",

  //   "lib/assets/image/doctor2.png",
  //   "lib/assets/image/doctor3.png",
  //   "lib/assets/image/doctor4.png",
  //   "lib/assets/image/doctor5.png",

  //   "lib/assets/image/doctor1.png",
  // ];

  // List doctor_name = [
  //   "Dr.Suvarna",
  //   "Dr.Priyank",
  //   "Dr.Supriya",
  //   "Dr.Basant Kumar",
  //   "Dr.Nisha",
  //   "Dr.Manisha"
  // ];
  // List degree = [
  //   "(MBBS, DGO)",
  //   "(MBBS,MS (Ortho))",
  //   "(MBBS, DLO)",
  //   "(MBBS, MD (Paediatrics))",
  //   "(MBBS,DMRD)",
  //   "(DHB,BHMS,CSD)"
  // ];
// List special=[
//   "	Gynaecologist",
//   "	Orthopaedic Surgeon",
//   "	ENT Surgeon",
//   " Paediatrician",
//   "Radiology",
//   "AYUSH Doctor",
// ];

