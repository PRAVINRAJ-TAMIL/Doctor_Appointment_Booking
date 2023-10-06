import 'package:flutter/material.dart';
import 'package:medical/model/doctorModel.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key, required this.doctor });
final DoctorModel doctor;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                      height: MediaQuery.of(context).size.width / 2.5,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: ListView.builder(
                          itemCount: doctors.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width / 1.4,
                              margin: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 10),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 242, 243, 243),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color.fromARGB(242, 123, 121, 121),
                                        blurRadius: 5)
                                  ]),
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Color.fromARGB(
                                                  255, 242, 243, 243),
                                              child: Image.asset(
                                                doctor.image,
                                                height: 50,
                                                width: 50,
                                              )),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                doctor.title,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Text(
                                                doctor.degree,
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                           
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                     Row(
                                       children: [
                                         Text("Specialization", style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),),
                                       ],
                                     ),
                                     Text(doctor.description, style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),textAlign:TextAlign.start,)
                                  ],
                                ),
                              ),
                             
                            );
                          }
                      )
  );

  }
}