import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/screen/splash/splashScreen.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';
import 'package:medical/utils/string.dart';

// import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}




// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   
//   @override
//   Widget build(BuildContext context) {
//     return const GetMaterialApp(
//       debugShowCheckedModeBanner:false,
//       // getPages: Routes().getpages,
//       home: Splash(),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner:false,
      // getPages: Routes().getpages,
      home: Splash(),
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
            builder: (BuildContext context) => const SplashScreen())));
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
