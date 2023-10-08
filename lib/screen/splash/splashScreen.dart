// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color:  MEDCOLOR.primery,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>const BottomNAvigation()));
                      },
                      child:  Text(MEDSTRING.skip),
                    )),
                const SizedBox(
                  height: 150,
                ),
                Center(
                  child: Container(
                 
                      alignment: Alignment.center,
                      child: Lottie.asset(MEDIMAGE.splash,
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(MEDSTRING.doct_appointment),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: Text(MEDSTRING.signin)),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                        child: Text(MEDSTRING.signup))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
