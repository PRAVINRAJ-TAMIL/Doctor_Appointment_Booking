import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 70),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text("Hello!, Do you book appoinment"),        
            ),
          ),
        ),
        Container(
                    
          alignment: Alignment.centerRight,
          child: Padding(
            padding:  EdgeInsets.only(left: 90,top: 20),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                decoration: BoxDecoration(color: Colors.cyan),
                padding:  EdgeInsets.only(left: 20,top: 20,bottom: 30,right: 20),
                child: Text("Hi, Doctor ")),
            ),
          ),
        )
      ],
    );
  }
}