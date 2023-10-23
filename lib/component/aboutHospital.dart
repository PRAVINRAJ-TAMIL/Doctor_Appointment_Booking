// ignore: duplicate_ignore


// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/utils/colors.dart';

 class AboutHospital extends StatelessWidget {
   const AboutHospital({super.key,required this.hos});
   final Hospital hos;

   @override
   Widget build(BuildContext context) {
     return Column(
      children: [
        const Row(
          children: [Text("About Hospital",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600))],
        ),
        Text(hos.description),
      ],
     );
     
   }
 }

  class AboutDoctor extends StatelessWidget {
   const AboutDoctor({super.key,required this.doctor});
 final DoctorModel doctor;

   @override
   Widget build(BuildContext context) {
     return Column(
      children: [
Container(

  child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      TextButton(onPressed: (){}, child: Text("Review")),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color:MEDCOLOR.primery),
          borderRadius: BorderRadius.circular(8),
          color:Color.fromARGB(255, 236, 249, 255)
        ),
        child: Column(
          children: [
            Text("Rating",style: TextStyle(color: Colors.blue),),
            Row(children: [
              Icon(Icons.star,color:Colors.yellow,),
              Icon(Icons.star,color:Colors.yellow,),
              Icon(Icons.star,color:Colors.yellow,),
              Icon(Icons.star_half,color:Colors.yellow,),
              Icon(Icons.star_border_purple500_sharp,color:Colors.yellow,),
              
              ],)
          ],
        ),
      )
    ],
  ),
),

        const Row(
          children: [Text("About Doctor",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600))],
        ),
        SizedBox(height: 10,),
        Text(doctor.color),
      ],
     );
     
   }
 }