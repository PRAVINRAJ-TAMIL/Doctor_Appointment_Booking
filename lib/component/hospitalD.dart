// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
import 'package:flutter/material.dart';

import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/utils/colors.dart';

class HosptitalLogo extends StatelessWidget {
  const HosptitalLogo({super.key, required this.hos, required DoctorModel docor});
  final Hospital hos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(tag: "${hos.id}", child: Image.asset(hos.image)),
        const Text(
                "Hospital Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
         Text(
                hos.title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: MEDCOLOR.text),
              ),
      ],
    );
  }
}
class Doctors extends StatelessWidget {
  const Doctors({
    Key? key,
    required this.doctor,  required Hospital hos,
  }) : super(key: key);
final DoctorModel doctor;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
         Text(
                doctor.description,
                style:  TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: MEDCOLOR.text),
              ),
      ],
    );
  }
}
