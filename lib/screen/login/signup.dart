import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/routes/routes.dart';
import 'package:medical/screen/login/login_Screen.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';
import 'package:medical/utils/string.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passToggle = true;
  final TextEditingController _mail = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _text = TextEditingController();
  final form = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  createUserWithEmailAndPassword() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(

        email: _mail.text,
        password: _password.text,
        
      );
      navigator?.pushNamed(LoginScreen as String);
      print("User Register: ${credential.user!.email}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print("Error:$e");
      print(e);
    }
  }

  bool isLogin = false;

  void togglePage() {
    isLogin = !isLogin;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MEDCOLOR.primery,
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Form(
              key: form,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Container(
                      alignment: Alignment.center,
                      child:
                          Lottie.asset(MEDIMAGE.signup_img, fit: BoxFit.fill)),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _text,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Enter name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: Text(MEDSTRING.enter_ful_name),
                        prefixIcon: const Icon(Icons.person_2_rounded)),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _mail,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Enter Mail";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: Text(MEDSTRING.enter_mail),
                        prefixIcon: const Icon(Icons.mail_outline)),
                  ),
                  const SizedBox(height: 30),
                  //  TextFormField(
                  //   controller: password,
                  //    validator: (text){
                  //       if(text==null|| text.isEmpty){
                  //         return "Enter Passowrd";
                  //       }
                  //       return null;
                  //     },
                  //     decoration: InputDecoration(
                  //         border: const OutlineInputBorder(),
                  //         label: Text(MEDSTRING.enter_ph),
                  //         prefixIcon: const Icon(Icons.phone_iphone)),
                  //   ),
                  // const SizedBox(height: 30),
                  TextFormField(
                    controller: _password,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Enter Passowrd";
                      }
                      return null;
                    },
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MEDCOLOR.butcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        if (form.currentState!.validate()) {
                          print("valide");
                          createUserWithEmailAndPassword();
                        Get.toNamed(Routes.loginscreen);
                        }
                      },
                      child: Text(MEDSTRING.create_ac)),
                  const SizedBox(height: 30),
                  Text(MEDSTRING.already_have_ac),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.loginscreen);
                      
                      },
                      child: Text(MEDSTRING.login))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
