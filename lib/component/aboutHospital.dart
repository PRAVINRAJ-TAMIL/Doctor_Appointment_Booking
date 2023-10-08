// ignore: duplicate_ignore


// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical/model/hospitalModel.dart';

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