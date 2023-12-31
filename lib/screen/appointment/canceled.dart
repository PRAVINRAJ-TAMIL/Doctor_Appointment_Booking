

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/string.dart';

class Canceled extends StatelessWidget {
  const Canceled({
    super.key,
    required this.doctor,
    required this.hos,
  });
  final DoctorModel doctor;
  final Hospital hos;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Text(MEDSTRING.complet,style: GoogleFonts.abel(fontSize: 20,fontWeight: FontWeight.w700),),
        const SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color.fromARGB(255, 255, 238, 238)),
          height: MediaQuery.of(context).size.width / 1.7,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: MEDCOLOR.secoundry,
                            child: Image.asset(
                              doctor.image,
                              height: 50,
                              width: 50,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              doctor.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              doctor.degree,
                              style: const TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              doctor.description,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset(
                          hos.image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Divider(
                indent: 20,
                endIndent: 20,
                 color:MEDCOLOR.comdiv,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Row(
                    children: [
                      const Icon(Icons.access_time_sharp),
                      const SizedBox(width: 5,),
                      Text(MEDSTRING.time),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.date_range_outlined),
                      const SizedBox(width: 5,),
                      Text(MEDSTRING.date),
                    ],
                  ),
                ],
              ),
              Divider(
              indent: 20,
              endIndent: 20,
               color:MEDCOLOR.comdiv,
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Icon(Icons.cancel_outlined,color:MEDCOLOR.red,),
                      const SizedBox(width: 5,),
                Text("Canceled",style: GoogleFonts.agdasima(fontSize: 22,fontWeight: FontWeight.w700,color: MEDCOLOR.red),),
           
],
            ),
           Divider(
              indent: 20,
              endIndent: 20,
   color:MEDCOLOR.comdiv,
            )
             
            ],
          ),
        ),
    const SizedBox(height: 30,),
       Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color.fromARGB(255, 255, 238, 238)),
          height: MediaQuery.of(context).size.width / 1.7,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color.fromARGB(255, 246, 246, 246),
                            child: Image.asset(
                              doctor.image,
                              height: 50,
                              width: 50,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              doctor.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              doctor.degree,
                              style: const TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              doctor.description,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset(
                          hos.image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Divider(
                indent: 20,
                endIndent: 20,
               color:MEDCOLOR.comdiv,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Row(
                    children: [
                      const Icon(Icons.access_time_sharp),
                      const SizedBox(width: 5,),
                      Text(MEDSTRING.time),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.date_range_outlined),
                      const SizedBox(width: 5,),
                      Text(MEDSTRING.date),
                    ],
                  ),
                ],
              ),
           Divider(
              indent: 20,
              endIndent: 20,
       color:MEDCOLOR.comdiv,
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(Icons.cancel_outlined,color: MEDCOLOR.red,),
                      const SizedBox(width: 5,),
                Text(MEDSTRING.complet,style: GoogleFonts.agdasima(fontSize: 22,fontWeight: FontWeight.w700,color: MEDCOLOR.red),),
           
],
            ),
       Divider(
              indent: 20,
              endIndent: 20,
              // thickness: 1,
           color:MEDCOLOR.comdiv,
            )
             
            ],
          ),
        ),
    const SizedBox(height: 30,),
     Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color.fromARGB(255, 255, 238, 238)),
          height: MediaQuery.of(context).size.width / 1.7,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color.fromARGB(255, 246, 246, 246),
                            child: Image.asset(
                              doctor.image,
                              height: 50,
                              width: 50,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              doctor.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              doctor.degree,
                              style: const TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              doctor.description,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset(
                          hos.image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Divider(
                indent: 20,
                endIndent: 20,
                  color:MEDCOLOR.comdiv,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Row(
                    children: [
                      const Icon(Icons.access_time_sharp),
                      const SizedBox(width: 5,),
                      Text(MEDSTRING.time),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.date_range_outlined),
                      const SizedBox(width: 5,),
                      Text(MEDSTRING.date),
                    ],
                  ),
                ],
              ),
    Divider(
              indent: 20,
              endIndent: 20,
                color:MEDCOLOR.comdiv,
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.cancel_outlined,color: MEDCOLOR.red,),
                      const SizedBox(width: 5,),
                Text("Canceled",style: GoogleFonts.agdasima(fontSize: 22,fontWeight: FontWeight.w700,color: MEDCOLOR.red),),
           
],
            ),
 Divider(
              indent: 20,
              endIndent: 20,
              // thickness: 1,
          color:MEDCOLOR.comdiv,
            ),
             
            ],
          ),
        ),
    const SizedBox(height: 30,),
    
      ]),
    );
  }
}
