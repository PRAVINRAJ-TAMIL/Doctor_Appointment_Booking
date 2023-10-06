import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/screen/login/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return  Material(
      
      child: SingleChildScrollView(
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            
        children: [
          
          SizedBox(height: 30),
              Container(
             
                    alignment: Alignment.center,
                  child:
                  Lottie.asset('lib/assets/json/login.json',
                  
                    fit: BoxFit.fill
                    )),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Enter Name"),
              prefixIcon: Icon(Icons.person_2_rounded)
            ),
          ),
          SizedBox(height: 30),
           TextField(
            obscureText: passToggle ? true :false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Enter Name"),
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
          ElevatedButton(onPressed:() {}, child: Text("LogIn")),
          SizedBox(height: 30),
        
          Text("Do you Have A Account?"),
          TextButton(onPressed: (){
              Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
          }, child:Text("Create Account"))
        ],
        
          ),
        ),)
      ),
    );
  }
}