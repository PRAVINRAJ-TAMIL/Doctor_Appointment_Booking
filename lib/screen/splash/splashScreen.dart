import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/screen/login/login_Screen.dart';
import 'package:medical/screen/login/signup.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 167, 205, 235),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>BottomNAvigation()));
                      },
                      child: Text("Skip"),
                    )),
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: Container(
                 
                      alignment: Alignment.center,
                      child: Lottie.asset('lib/assets/json/splash1.json',
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("DOCTOR APPOINTMENT"),
                SizedBox(
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
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text("Sign In")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text("Sign Up"))
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
