// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:medical/component/aboutHospital.dart';
import 'package:medical/component/doctorList.dart';
import 'package:medical/component/hospitalD.dart';
import 'package:medical/model/doctorModel.dart';
import 'package:medical/routes/routes.dart';
import 'package:medical/screen/appointment/sucess.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/screen/message/chatScreen.dart';
import 'package:medical/utils/colors.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:table_calendar/table_calendar.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  // CalendarDatePicker _calendarDatePicker=CalendarDatePicker(initialDate: initialDate, firstDate: firstDate, lastDate: lastDate, onDateChanged: onDateChanged)
  int? currentindex;
  bool selectdate = false;
  bool selecttime = false;
  bool weekend = false;

  var hour = 0;
  var minute = 0;
  var timeFormat = "AM";
  DateTime _today = DateTime.now();
  void daySelect(DateTime day, DateTime focusDay) {
    setState(() {
      _today = day;
    });
  }

  CalendarFormat _format =
      CalendarFormat.month; // CalendarFormet formet= CalendarFormet.month();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                connect(),
                _time(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                              backgroundColor: MEDCOLOR.butcolor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),),
                  onPressed: (){
                     Get.to(() => Sucess());
                }, child: Text("Book Appointment"))
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget connect() {
    return Column(
      children: [
        Container(
          child: TableCalendar(
            firstDay: DateTime.utc(2021, 11, 20),
            focusedDay: _today,
            lastDay: DateTime.utc(2030, 12, 20),
            rowHeight: 43,
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            calendarFormat: _format,
            onDaySelected: daySelect,
            selectedDayPredicate: (day) => isSameDay(day, _today),
            availableCalendarFormats: {CalendarFormat.month: "Month"},
          ),
        )
      ],
    );
  }

  Widget _time() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "Select Time! ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, "0")} ${timeFormat}",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: MEDCOLOR.primery,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberPicker(
                  minValue: 0,
                  maxValue: 12,
                  value: hour,
                  zeroPad: true,
                  infiniteLoop: true,
                  itemWidth: 80,
                  itemHeight: 60,
                  onChanged: (value) {
                    setState(() {
                      hour = value;
                    });
                  },
                  textStyle: const TextStyle(color: Colors.grey, fontSize: 20),
                  selectedTextStyle:
                      const TextStyle(color: Colors.white, fontSize: 30),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: Colors.white,
                        ),
                        bottom: BorderSide(color: Colors.white)),
                  ),
                ),
                NumberPicker(
                  minValue: 0,
                  maxValue: 59,
                  value: minute,
                  zeroPad: true,
                  infiniteLoop: true,
                  itemWidth: 80,
                  itemHeight: 60,
                  onChanged: (value) {
                    setState(() {
                      minute = value;
                    });
                  },
                  textStyle: const TextStyle(color: Colors.grey, fontSize: 20),
                  selectedTextStyle:
                      const TextStyle(color: Colors.white, fontSize: 30),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: Colors.white,
                        ),
                        bottom: BorderSide(color: Colors.white)),
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          timeFormat = "AM";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: timeFormat == "AM"
                                ? Color.fromARGB(171, 158, 232, 255)
                                : Color.fromARGB(255, 196, 233, 242),
                            border: Border.all(
                                color: timeFormat == "AM"
                                    ? Color.fromARGB(171, 117, 216, 255)
                                    : Color.fromARGB(255, 196, 233, 242))),
                        child: const Text(
                          "AM",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          timeFormat = "PM";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: timeFormat == "PM"
                              ? Color.fromARGB(171, 158, 232, 255)
                              : Color.fromARGB(181, 221, 243, 249),
                          border: Border.all(
                            color: timeFormat == "PM"
                                ? Color.fromARGB(171, 117, 216, 255)
                                : Color.fromARGB(181, 221, 243, 249),
                          ),
                        ),
                        child: const Text(
                          "PM",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class HospitalDetail extends StatelessWidget {
  HospitalDetail({super.key, required this.doctor});

  final DoctorModel doctor;
  final phone = "+91987654321";

  int index = 0;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Material(
      child: SafeArea(
          child: Scaffold(
        backgroundColor: MEDCOLOR.secoundry,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14, top: 10),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.more_vert_sharp),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Doctorlogo(
                doctor: doctor,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => ChatScreenAppBar(doctor: doctors[index]));
                      },
                      child: Icon(
                        Icons.message,
                        color: MEDCOLOR.primery,
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  IconButton(
                      onPressed: () async {
                        FlutterPhoneDirectCaller.callNumber(phone);
                      },
                      icon: Icon(
                        Icons.call,
                        color: MEDCOLOR.primery,
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                    color: MEDCOLOR.secoundry,
                    boxShadow: [
                      BoxShadow(blurRadius: 3, color: MEDCOLOR.primery)
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: AboutDoctor(
                        doctor: doctor,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: MEDCOLOR.butcolor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                              Get.to(() => BookAppointment());
                            },
                            child: Text("Book Your Appointment"))),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
