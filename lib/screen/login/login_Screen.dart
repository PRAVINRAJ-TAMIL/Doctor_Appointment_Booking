// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/screen/login/signup.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';
import 'package:medical/utils/string.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MEDCOLOR.primery,
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                  alignment: Alignment.center,
                  child: Lottie.asset(MEDIMAGE.login_img,
                      fit: BoxFit.fill)),
              const SizedBox(height: 30),
               TextField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(MEDSTRING.enter_username),
                    prefixIcon: const Icon(Icons.person_2_rounded)),
              ),
              const SizedBox(height: 30),
              TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(MEDSTRING.Enter_pass),
                    prefixIcon: const Icon(Icons.lock_clock_rounded),
                    suffixIcon: InkWell(
                      onTap: () {
                        if (passToggle == true) {
                          passToggle = false;
                        } else {
                          passToggle = true;
                        }
                        setState(() {});
                      },
                      child: passToggle
                          ? const Icon(CupertinoIcons.eye_slash_fill)
                          : const Icon(CupertinoIcons.eye_fill),
                    )),
              ),
              const SizedBox(height: 30),
              ElevatedButton(onPressed: () {}, child:  Text(MEDSTRING.login)),
              const SizedBox(height: 30),
             Text(MEDSTRING.have_acc),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: Text(MEDSTRING.create_ac))
            ],
          ),
        ),
      ),
    );
  }
}
