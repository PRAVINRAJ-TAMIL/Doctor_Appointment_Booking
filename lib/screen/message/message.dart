import 'package:flutter/material.dart';
import 'package:medical/screen/message/chatScreen.dart';

List doctor_image = [
  "lib/assets/image/doctor1.png",
  "lib/assets/image/doctor2.png",
  "lib/assets/image/doctor3.png",
  "lib/assets/image/doctor4.png",
  "lib/assets/image/doctor5.png",
  "lib/assets/image/doctor1.png",
];

class Message extends StatelessWidget {
  const Message({super.key});
  // final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Message"),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, blurRadius: 10, spreadRadius: 3)
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search", border: InputBorder.none),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search_outlined,
                    ),
                  ])),
          SizedBox(height: 30),
          Text("Active Now"),
          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                  itemCount: doctor_image.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Stack(
                        textDirection: TextDirection.rtl,
                        children: [
                          Center(
                            child: Container(
                              height: 75,
                              width: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  doctor_image[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(4),
                            padding: EdgeInsets.all(3),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 3, 230, 14),
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Text("Resent Text"),
          ListView.builder(
              itemCount: doctor_image.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: ListTile(
                    // minVerticalPadding: 20,
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatScreen()));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        doctor_image[index],
                      ),
                    ),
                    title: Text(
                      "hi",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    subtitle: Text("hi"),
                    trailing: Text("11:37 AM"),
                  ),
                );
              })
        ],
      ),
    );
  }
}
