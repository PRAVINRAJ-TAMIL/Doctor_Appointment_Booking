import 'package:flutter/material.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/model/model.dart';

class UPCOMING extends StatelessWidget {
  const UPCOMING({
    super.key,
    required this.doctor,
    required this.hos,
  });
  final DoctorModel doctor;
  final Hospital hos;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const Text("Doctor"),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color.fromARGB(255, 235, 243, 233)),
          height: MediaQuery.of(context).size.width / 1.7,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color.fromARGB(255, 242, 243, 243),
                            child: Image.asset(
                              doctor.image,
                              height: 50,
                              width: 50,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              doctor.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              doctor.degree,
                              style: const TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              doctor.description,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset(
                          hos.image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                     
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(width: 5,),
                      Text("Conformed"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_sharp),
                      SizedBox(width: 5,),
                      Text("09:15 AM"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.date_range_outlined),
                      SizedBox(width: 5,),
                      Text("12/10/2023"),
                    ],
                  ),
                ],
              ),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child:const Text("Reschudule")),
              
            ElevatedButton(onPressed: (){}, child:const Text("Cancel")),
],
            ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
    const SizedBox(height: 30,),
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: const Color.fromARGB(255, 235, 243, 233)),
          height: MediaQuery.of(context).size.width / 1.7,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color.fromARGB(255, 242, 243, 243),
                            child: Image.asset(
                              doctor.image,
                              height: 50,
                              width: 50,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              doctor.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              doctor.degree,
                              style: const TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              doctor.description,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset(
                          hos.image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                     
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(width: 5,),
                      Text("Conformed"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_sharp),
                      SizedBox(width: 5,),
                      Text("09:15 AM"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.date_range_outlined),
                      SizedBox(width: 5,),
                      Text("12/10/2023"),
                    ],
                  ),
                ],
              ),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child:const Text("Reschudule")),
              
            ElevatedButton(onPressed: (){}, child:const Text("Cancel")),
],
            ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
   
      ]),
    );
  }
}
