import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/utils/colors.dart';
import 'package:medical/utils/image.dart';
class Sucess extends StatefulWidget {
  const Sucess({super.key});

  @override
  State<Sucess> createState() => _SucessState();
}

class _SucessState extends State<Sucess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(MEDIMAGE.splash, fit: BoxFit.cover),
              SizedBox(height: 20,),
              Text("Please wait your Appointment Confirmation....",textAlign: TextAlign.center,style: TextStyle(color: MEDCOLOR.text,fontSize: 18,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                                  backgroundColor: MEDCOLOR.butcolor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),onPressed: (){
                
                Get.to(() => BottomNAvigation());
              }, child: Text("Back to Home"))
              
            ],
          ),
        ),
      ),
    ));
  }
}