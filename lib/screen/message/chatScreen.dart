// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical/screen/message/chat.dart';
import 'package:medical/screen/message/message.dart';
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
    return SafeArea(child: Scaffold(
      backgroundColor: MEDCOLOR.secoundry,
      appBar: AppBar(
        backgroundColor:MEDCOLOR.primery,
        title: Row(
          
          children: [
            CircleAvatar(
              radius: 21.1,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                // ignore: sort_child_properties_last
                child: Image.asset(MEDIMAGE.doctor_img_3),
                radius: 20,
                backgroundColor: MEDCOLOR.secoundry,
              ),
            ),
            const SizedBox(width: 30,),
            Text(MEDSTRING.helo),
          ],
        ),
        leading:   InkWell(
                      onTap: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) => const Message()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14,),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
          
          actions: const [Padding(
            padding: EdgeInsets.only(right:14.0),
            child: Icon(Icons.call),
          )],

          ),
       
      
      body: 
      ListView.builder(itemBuilder: (context,index)=> const Chat()),
//       bottomSheet: Container(
//         height: 55,
//         decoration:BoxDecoration(
//           color: Color.fromARGB(227, 207, 43, 43),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black45,
//             ),
            
//           ]
//         ),
// child:Row(
//   children: [
//     Icon(Icons.add),
//     Icon(Icons.emoji_emotions_sharp),
//     TextFormField(),
//     Icon(Icons.camera_alt_sharp),
//   ],
// ),

//       ),
 
  )
    );
  }
}