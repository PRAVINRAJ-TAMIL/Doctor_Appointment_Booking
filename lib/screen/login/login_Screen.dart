// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  bool isLoading=false;
final TextEditingController mail=TextEditingController();
final TextEditingController _password=TextEditingController();
final TextEditingController text=TextEditingController();
final form = GlobalKey<FormState>();

signInWithEmailAndPassword() async {
  try {
    setState(() {
      isLoading=true;
    });
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: mail.text,
    password: _password.text
  );
  print("User Login: ${credential.user!.email}");
  // print("User Login: ${credential.user!.}");
    setState(() {
      isLoading=false;
    });
} on FirebaseAuthException catch (e) {
  print("Error: $e");
    setState(() {
      isLoading=false;
    });
  if (e.code == 'user-not-found') {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("user not found")));
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("wrong pass")));
    print('Wrong password provided for that user.');
  }
}
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MEDCOLOR.primery,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Form(
              key: form,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Container(
                      alignment: Alignment.center,
                      child: Lottie.asset(MEDIMAGE.login_img,
                          fit: BoxFit.fill)),
                  const SizedBox(height: 30),
                   TextFormField(
                    controller: mail,
                 validator: (text){
                      if(text==null|| text.isEmpty){
                        return "Enter Mail";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: Text(MEDSTRING.enter_username),
                        prefixIcon: const Icon(Icons.person_2_rounded)),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                        controller: _password,
                   validator: (text){
                      if(text==null|| text.isEmpty){
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
                  ),),
                    onPressed: () {
   if(form.currentState!.validate()){
                            print("valide");
                            signInWithEmailAndPassword();
                          }

                    }, child:  isLoading
                    ? const CircularProgressIndicator()
                    :Text(MEDSTRING.login)),


                  const SizedBox(height: 30),


                 Text(MEDSTRING.have_acc),
                  TextButton(
                      onPressed: () {
                         
                        Get.to(() => const SignUp()); 
                      },
                      child: Text(MEDSTRING.create_ac))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
