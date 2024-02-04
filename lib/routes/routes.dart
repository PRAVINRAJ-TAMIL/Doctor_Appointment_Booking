
import 'package:get/get.dart';
import 'package:medical/model/auth/auth_ser.dart';
import 'package:medical/screen/appointment/bookAppointment.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/screen/login/login_Screen.dart';
import 'package:medical/screen/login/signup.dart';

class Routes {
  static String bottomnavigation = "/bottomnavigation"; // Skip
  static String signup = "/signup"; //signup
  static String loginscreen = "/loginscreen"; //signin
  static String auth = "/auth"; 
  static String bookappointment = "/bookappointment"; 




  final getpages = [
    GetPage(name: bottomnavigation, page: (() => const BottomNAvigation())),
    GetPage(name: signup, page: (() => const SignUp())),
    GetPage(name: loginscreen, page: (() => const LoginScreen())),
    GetPage(name: auth, page: (() => const Auth())),
    GetPage(name: bookappointment, page: (() => const BookAppointment())),



  ];
}
