// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/auth/auth_ser.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/screen/login/login_Screen.dart';
import 'package:medical/screen/login/signup.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';
import 'package:medical/utils/string.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              color: MEDCOLOR.primery,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const SizedBox(),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => const BottomNAvigation());
                        },
                        child: Text(MEDSTRING.skip, style:TextStyle(color: MEDCOLOR.butcolor)),
                      )),
                  const SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: Container(
                        alignment: Alignment.center,
                        child: Lottie.asset(MEDIMAGE.splash, fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(MEDSTRING.medtez,style: GoogleFonts.acme(fontSize: 28,fontWeight: FontWeight.w900,color: const Color.fromARGB(255, 2, 82, 179), shadows: <Shadow>[
                            Shadow(
                              blurRadius: 5,
                              color: MEDCOLOR.text,
                            ),
                           
                          ],),),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                                style: ElevatedButton.styleFrom(
                           backgroundColor: MEDCOLOR.butcolor,
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),),
                          onPressed: () {
                            Get.to(() => const Auth());
                          },
                          child: Text(MEDSTRING.signin)),
                      ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: MEDCOLOR.butcolor,
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),),
                          onPressed: () {
                            Get.to(() => const SignUp());

                          },
                          child: Text(MEDSTRING.signup))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
