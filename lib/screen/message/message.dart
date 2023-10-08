import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/screen/message/chatScreen.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/string.dart';


class Message extends StatelessWidget {
  const Message({super.key,  });
// final DoctorModel doctor;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MEDCOLOR.ternery,
        body:  SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Text(MEDSTRING.msg,style: GoogleFonts.abel(fontSize: 20,fontWeight: FontWeight.w700),),
                const SizedBox(height: 10,),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: MEDCOLOR.ternery,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 225, 221, 221), blurRadius: 1,)
                        ]
                        ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: MEDSTRING.search, border: InputBorder.none),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.search_outlined,
                          ),
                        ])),
                const SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Text(MEDSTRING.act_now, style: GoogleFonts.abel(fontSize: 16,fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.builder(
                        itemCount: doctors.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MEDCOLOR.secoundry
                            ),
                            child: Stack(
                              textDirection: TextDirection.rtl,
                              children: [
                                Center(
                                  child: SizedBox(
                                    height: 65,
                                    width: 65,
                                    // color: Colors.blue,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ClipRRect(
                                        
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          doctors[index].image,
                                          fit: BoxFit.cover,
                                          // color: MEDCOLOR.ternery,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(3),
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      color: MEDCOLOR.secoundry, shape: BoxShape.circle),
                                  child: Container(
                                    decoration: const BoxDecoration(
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
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Text(MEDSTRING.recent_txt,style: GoogleFonts.abel(fontSize: 16,fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                ListView.builder(
                    itemCount: doctors.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: ListTile(
                          // minVerticalPadding: 20,
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChatScreen()));
                          },
                          leading: CircleAvatar(
                            radius: 31,
                            backgroundColor:Colors.black,
                            child: CircleAvatar(
                              backgroundColor: MEDCOLOR.secoundry,
                              radius: 30,
                              backgroundImage: AssetImage(
                                doctors[index].image,
                              ),
                            ),
                          ),
                          title: Text(doctors[index].title,
                            // MEDSTRING.hi,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          subtitle: Text(doctors[index].degree),
                          trailing: Text(MEDSTRING.time),
                        ),
                      );
                    })
              ],
            ),
          ),
        
      ),
    );
  }
}
