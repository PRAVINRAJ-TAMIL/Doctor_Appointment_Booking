import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/component/hospitalList.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/model.dart';
import 'package:medical/screen/home/hospitalDetais.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final Hospital hos;

  List doct = [
    "Psychiatrist",
    "Cardiologist",
    "Family medicine",
    "Radiologist",
    "Neurologist",
    "Ophthalmologist",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(211, 255, 255, 255),
            body: SingleChildScrollView(
                child: Column(children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 31,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage("lib/assets/image/doctor5.png"),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Text(
                      "WELCOME!",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),

//// Doctor list

              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Doctors",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(161, 0, 0, 0)),
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
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 213, 255, 220),
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              const BoxShadow(
                                color: Color.fromARGB(73, 0, 255, 47),
                                blurRadius: 6,
                              )
                            ]),
                        child: Center(
                          child: Text(
                            doct[index],
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(206, 52, 50, 50)),
                            textAlign: TextAlign.center,
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
                          color: const Color.fromARGB(255, 193, 204, 214),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(176, 67, 67, 67),
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          Lottie.asset('lib/assets/json/emer.json',
                              height: MediaQuery.of(context).size.height / 7.8,
                              width: MediaQuery.of(context).size.width / 2.5,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Emergency",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.red),
                          ),
                          const Text(
                            "Book Appointment",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    ///// Visit Home

                    Container(
                      width: MediaQuery.of(context).size.width /  2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 198, 211, 222),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(176, 67, 67, 67),
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          Lottie.asset('lib/assets/json/home1.json',
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Visit Home",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Book Appointment",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    ///// Visit Hospital

                    Container(
                      width: MediaQuery.of(context).size.width /  2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 193, 204, 214),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(176, 67, 67, 67),
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          Lottie.asset('lib/assets/json/hospital2.json',
                              height: MediaQuery.of(context).size.height / 7.8,
                              width: MediaQuery.of(context).size.width / 2.5,
                              fit: BoxFit.fill),
                          const Text(
                            "Visit Hospital",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                          const Text(
                            "Book Appointment",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    ///// Ambulance
                    Container(
                      width: MediaQuery.of(context).size.width /  2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 193, 204, 214),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(176, 67, 67, 67),
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          Lottie.asset('lib/assets/json/Ambu.json',
                              height: MediaQuery.of(context).size.height / 8.2,
                              width: MediaQuery.of(context).size.width / 2.5,
                              fit: BoxFit.fill),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Ambulance",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.red),
                          ),
                          const Text(
                            "Book Appointment",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
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
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Hospitals ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(161, 0, 0, 0)),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
//// Hospital List

              SizedBox(
                width: MediaQuery.of(context).size.width /  0.5,
                   height: MediaQuery.of(context).size.height /  0.5,
                child: Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: hospitals.length,
                      shrinkWrap: true,
                      
                      itemBuilder: (BuildContext context, int index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HospitalDetail(
                                      hos: hospitals[index],
                                      doctor: doctors[index],
                                    ),
                                  ));
                            },
                            child: HospitalList(
                              hos: hospitals[index],
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HospitalDetail(
                                            hos: hospitals[index],
                                            doctor: doctors[index])));
                              },
                            ),
                          )),
                ),
              )
            ]))));
  }
}
