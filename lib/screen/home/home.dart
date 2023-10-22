import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/component/hospitalList.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/screen/home/doctor.dart';
import 'package:medical/screen/home/hospitalDetais.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';
import 'package:medical/utils/string.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final Hospital hos;
  late final DoctorModel doctor;
final FirebaseAuth _auth=FirebaseAuth.instance;
  

  @override
  Widget build(BuildContext context) {
  
    // String? _displayName= _auth.currentUser!.username;
    return SafeArea(
        child: Scaffold(
            backgroundColor: MEDCOLOR.bg,
            body: SingleChildScrollView(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  
                    Container(
                      height:MediaQuery.of(context).size.height/10,
                      width: MediaQuery.of(context).size.width/5,
                      child: Image.asset(MEDIMAGE.logo,fit: BoxFit.cover,)),
                 
                    SizedBox(width: 50,),
                   Padding(
                     padding: const EdgeInsets.only(top: 30),
                     child: Text(
                        "WELCOME!",
                        style:
                           GoogleFonts.acme(fontSize: 24, fontWeight: FontWeight.w600,color: Color.fromARGB(255, 24, 70, 150)),
                      ),
                   ),
                  ],
                ),
              ),
              const Divider(
                endIndent: 10,
                indent: 10,
              ),
              const SizedBox(
                height: 10,
              ),

//// Doctor list

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Text(
                      MEDSTRING.doctor,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: MEDCOLOR.text),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                child: ListView.builder(
                    itemCount: doctors.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){

                        },
                        child: InkWell(
                          onTap: (){
                            Get.to(() => DoctorsL(doctor: doctors[index],hos: hospitals[index],));
        
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 213, 255, 220),
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(73, 0, 255, 47),
                                    blurRadius: 6,
                                  )
                                ]),
                            child: Center(
                              child: Text(
                               
                                
                                doctors[index].description,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(206, 52, 50, 50)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4.5,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ///// Emergency

                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: MEDCOLOR.cont,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow:  [
                            BoxShadow(
                              color: MEDCOLOR.shad,
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          Lottie.asset(MEDIMAGE.emer_img,
                              height: MediaQuery.of(context).size.height / 7.8,
                              width: MediaQuery.of(context).size.width / 2.5,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            MEDSTRING.emer,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: MEDCOLOR.red),
                          ),
                          
                        ],
                      ),
                    ),
                    ///// Visit Home

                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: MEDCOLOR.cont,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow:  [
                            BoxShadow(
                              color: MEDCOLOR.shad,
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Lottie.asset(MEDIMAGE.visit_homr_img,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            MEDSTRING.visit_home,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            MEDSTRING.book_appoint,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    ///// Visit Hospital

                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: MEDCOLOR.cont,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: MEDCOLOR.shad,
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          Lottie.asset(MEDIMAGE.visit_hos_img,
                              height: MediaQuery.of(context).size.height / 7.8,
                              width: MediaQuery.of(context).size.width / 2.5,
                              fit: BoxFit.fill),
                          Text(
                            MEDSTRING.visit_hos,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            MEDSTRING.book_appoint,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    ///// Ambulance
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: MEDCOLOR.cont,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: MEDCOLOR.shad,
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          Lottie.asset(MEDIMAGE.ambulance,
                              height: MediaQuery.of(context).size.height / 8.2,
                              width: MediaQuery.of(context).size.width / 2.5,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            MEDSTRING.ambulance,
                            style:  TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: MEDCOLOR.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Text(
                      MEDSTRING.hospital,
                      style:TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: MEDCOLOR.text),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
//// Hospital List

              SizedBox(
                width: MediaQuery.of(context).size.width / 0.5,
                height: MediaQuery.of(context).size.height / 0.5,
                child: Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 250,
                              childAspectRatio: 3/ 2,
                              crossAxisSpacing: 1,
                              mainAxisSpacing: 1
                              ),
                      itemCount: hospitals.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                            onTap: () {
                              Get.to(() => HospitalDetail( hos: hospitals[index],
                                      doctor: doctors[index],));
                          
                            },
                            child: HospitalList(
                              hos: hospitals[index],
                              press: () {
                                Get.to(() =>  HospitalDetail(hos: hospitals[index],
                                            doctor: doctors[index]));
                          
                              },
                            ),
                          )),
                ),
              )
            ]))));
  }
}
