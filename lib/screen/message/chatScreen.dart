
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:medical/component/hospitalD.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/screen/message/chat.dart';
import 'package:medical/screen/message/message.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/string.dart';

class ChatScreenAppBar extends StatelessWidget {
  const ChatScreenAppBar({super.key, required this.doctor});
final DoctorModel doctor;
final phone = "+91987654321";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        
        backgroundColor: MEDCOLOR.primery,
        title: Row(
          children: [
            DoctorImg(doctor: doctor,),
             ],
        ),
        leading:Padding(
          padding: const EdgeInsets.only(left: 14),
          child: IconButton(
                  onPressed: 
                     () {
                        Get.to(() => Message());
                      },
                     icon: Icon(
                        Icons.arrow_back_ios_rounded,
                      )),
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child:  IconButton(
                      onPressed: () async => FlutterPhoneDirectCaller.callNumber(phone),
                      icon: Icon(Icons.call))
          )
        ],
      ), 
     body: ListView.builder(itemBuilder: (context, index) => const Chat()),

    );
  }
}


