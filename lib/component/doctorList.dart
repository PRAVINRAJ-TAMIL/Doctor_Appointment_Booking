// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/string.dart';

class DoctorList extends StatelessWidget {
 const DoctorList({super.key, required this.doctor });
  final DoctorModel doctor;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                      height: MediaQuery.of(context).size.width / 2.5,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: ListView.builder(
                          itemCount: doctors.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width / 1.4,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 10),
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: MEDCOLOR.secoundry,
                                  boxShadow:  [
                                    BoxShadow(
                                        color:
                                            MEDCOLOR.shad,
                                        blurRadius: 5)
                                  ]),
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                              radius: 30,
                                              backgroundColor: MEDCOLOR.secoundry,
                                              child: Image.asset(
                                                doctors[index].image,
                                                height: 50,
                                                width: 50,
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                doctors[index].title,
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Text(
                                                doctors[index].degree,
                                                style: const TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                           
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                     Row(
                                       children: [
                                         Text(MEDSTRING.special, style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),),
                                       ],
                                     ),
                                     Text(doctors[index].description, style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),textAlign:TextAlign.start,)
                                  ],
                                ),
                              ),
                             
                            );
                          }
                      )
  );

  }
}