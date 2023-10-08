import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:medical/utils/string.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           Container(
                      
            alignment: Alignment.centerRight,
            child: Padding(
              padding:  const EdgeInsets.only(left: 90,top: 20),
              child: ClipPath(
                clipper: LowerNipMessageClipper(MessageType.send),
                child: Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 184, 215, 219)),
                  padding:  const EdgeInsets.only(left: 20,top: 20,bottom: 30,right: 20),
                  child: Text(MEDSTRING.cht_doc)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 229, 227, 227),
                ),
                child: Text(MEDSTRING.doct_chat),        
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}