// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
import 'package:flutter/material.dart';

import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/hospitalModel.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/string.dart';

class HosptitalLogo extends StatelessWidget {
  const HosptitalLogo({super.key, required this.hos,  required this.doctor, });
  final Hospital hos;
  final DoctorModel doctor;


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
class DoctorImg extends StatelessWidget {
  const DoctorImg({super.key, required this.doctor,});
final DoctorModel doctor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
          child: Image.asset(
                 doctor.image,fit: BoxFit.cover,
               ),
        ),
             SizedBox(width: 20,),
             Text(doctor.title)
      ],
    );
  }
}

class Doctorlogo extends StatelessWidget {
  const Doctorlogo ({super.key, required this.doctor, });
 
  final DoctorModel doctor;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/3.7,
          width:  MediaQuery.of(context).size.width/1.8,
          child: Hero(tag: "${doctor.id}", child: Image.asset(doctor.image,fit: BoxFit.contain,))),
        const Text(
                "Doctor Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
SizedBox(height:10,),
         Text(
                doctor.title,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    color: MEDCOLOR.text),
              ),
               Text(
                doctor.degree,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: MEDCOLOR.text),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(MEDSTRING.special,style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: MEDCOLOR.text)),
                    Text(":",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: MEDCOLOR.text)),
                    SizedBox(width: 10,),
                  Text(doctor.description,style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: MEDCOLOR.text))
                ],
              )
           
      ],
    );
  }
}