import 'package:flutter/material.dart';
import 'package:medical/model/model.dart';

 class AboutHospital extends StatelessWidget {
   const AboutHospital({super.key,required this.hos});
   final Hospital hos;

   @override
   Widget build(BuildContext context) {
     return Column(
      children: [
        Row(
          children: [Text("About Hospital",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600))],
        ),
        Text("${hos.description}"),
      ],
     );
     
   }
 }