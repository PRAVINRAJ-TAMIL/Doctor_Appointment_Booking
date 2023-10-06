import 'package:flutter/material.dart';
import 'package:medical/screen/message/chat.dart';
import 'package:medical/screen/message/message.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 186, 219, 247),
        title: Row(
          
          children: [
            CircleAvatar(
              child: Image.asset("lib/assets/image/doctor5.png",),
              radius: 30,
            ),
            Text("Helo"),
          ],
        ),
        leading: InkWell(
          onTap: (){
           Navigator.pop(context,
      MaterialPageRoute(builder: (context) => const Message()));
          },
          child: Icon(Icons.arrow_back_ios_new_rounded)),
          
          actions: [Icon(Icons.call)],

          ),
       
      
      body: 
      ListView.builder(itemBuilder: (context,index)=> Chat()),
      bottomSheet: Container(
        height: 65,
        decoration:BoxDecoration(
          color: Colors.white54,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
            ),
            
          ]
        ),
child:Row(
  children: [
    Icon(Icons.add),
    Icon(Icons.emoji_emotions_sharp),
    TextFormField(),
    Icon(Icons.camera_alt_sharp),
  ],
),

 

      ),
 
  )
    );
  }
}