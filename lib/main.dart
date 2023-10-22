import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/auth/auth_ser.dart';
import 'package:medical/firebase_options.dart';
import 'package:medical/screen/splash/splashScreen.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';
import 'package:medical/utils/string.dart';

// import 'routes/routes.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner:false,
      home: Splash(),
            // home: Auth(),

    );
  }
}
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   @override
     void initState() {
    super.initState();
    Timer(
        const Duration(seconds:5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Auth())));
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: MEDCOLOR.primery,
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(MEDIMAGE.splash, fit: BoxFit.fill),
               const SizedBox(
                        height: 50,
                      ),
                      Text(MEDSTRING.medtez,style: GoogleFonts.acme(fontSize: 28,fontWeight: FontWeight.w900,color: const Color.fromARGB(255, 2, 82, 179), shadows: <Shadow>[
                                Shadow(
                                  blurRadius: 5,
                                  color: MEDCOLOR.text,
                                ),
                               
                              ],),),
          ],
        ),
      ),
    );
  }
}
