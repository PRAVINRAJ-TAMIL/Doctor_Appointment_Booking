// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/utils/colors.dart';

 class HospitalList extends StatelessWidget {
   const HospitalList({super.key, required this.hos, required this.press,});
 
  
final VoidCallback press;
  final Hospital hos;
   @override
   Widget build(BuildContext context) {
     return GestureDetector(
      child: Column(
        children: [
           Expanded(
            flex: 3,
             child: Container (
                          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: MEDCOLOR.secoundry,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow:  const [
                                BoxShadow(
                                    color: Color.fromARGB(22, 0, 0, 0),
                                    blurRadius: 6,
                                    spreadRadius: 4)
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                hos.image,
                                height: 80,
                                width: 100,
                              ),
                              Text(
                                hos.title,
                                style:  TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: MEDCOLOR.text),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ),
           ),
        ],
      ),
     );
   }
 }