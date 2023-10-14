
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical/routes/routes.dart';
import 'package:medical/screen/message/chat.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';
import 'package:medical/utils/string.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: MEDCOLOR.bg,
      appBar: AppBar(
        
        backgroundColor: MEDCOLOR.primery,
        title: Row(
          children: [
            CircleAvatar(
              radius: 21.1,
              backgroundColor: MEDCOLOR.text,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: MEDCOLOR.secoundry,
                child: Image.asset(MEDIMAGE.doctor_img_3),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(MEDSTRING.helo),
          ],
        ),
        leading: InkWell(
          onTap: () {
            Get.toNamed(Routes.bottomnavigation);
          },
          child: const Padding(
            padding: EdgeInsets.only(
              left: 14,
            ),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: Icon(Icons.call),
          )
        ],
      ),

      body: ListView.builder(itemBuilder: (context, index) => const Chat()),

    ));
  }
}
