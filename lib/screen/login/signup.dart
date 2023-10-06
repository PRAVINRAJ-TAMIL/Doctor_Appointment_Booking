import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/screen/login/login_Screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
 child: SingleChildScrollView(
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            
        children: [
          
          SizedBox(height: 30),
              Container(
                    // color: Colors.blueAccent,
                    //  height: double.infinity,
              // width: double.infinity,
                    alignment: Alignment.center,
                  child:
                  Lottie.asset('lib/assets/json/Signup.json',
                  
                    fit: BoxFit.fill
                    )),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Enter Full Name"),
              prefixIcon: Icon(Icons.person_2_rounded)
            ),
          ),
          SizedBox(height: 30),

           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text(" Enter Mail I'd"),
              prefixIcon: Icon(Icons.mail_outline)
            ),
          ),
                    SizedBox(height: 30),

           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Enter Phone Number"),
              prefixIcon: Icon(Icons.phone_iphone)
            ),
          ),
                    SizedBox(height: 30),

           TextField(
            obscureText: passToggle ? true :false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Enter Password"),
              prefixIcon: Icon(Icons.lock_clock_rounded),
              suffixIcon: InkWell(onTap: (){
          if(passToggle == true){
            passToggle = false;
          }else{
            passToggle =true;
          }
          setState(() {
            
          });
              },
              child: passToggle ? Icon( CupertinoIcons.eye_slash_fill) : Icon( CupertinoIcons.eye_fill),
              )
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed:() {}, child: Text("Create Account")),
          SizedBox(height: 30),
        
          Text("Already Have Account?"),
          TextButton(onPressed: (){
             Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
          }, child:Text("Login"))
        ],
        
          ),
        ),)
      ),
    );
  }
}