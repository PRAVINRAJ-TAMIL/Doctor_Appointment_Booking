
import 'package:get/get.dart';
import 'package:medical/screen/bottomNavigation/bottomNavigat.dart';
import 'package:medical/screen/login/login_Screen.dart';
import 'package:medical/screen/login/signup.dart';

class Routes {
  static String bottomnavigation = "/bottomnavigation"; // Skip
  static String signup = "/signup"; //signup
  static String loginscreen = "/loginscreen"; //signin



  final getpages = [
    GetPage(name: bottomnavigation, page: (() => const BottomNAvigation())),
    GetPage(name: signup, page: (() => const SignUp())),
    GetPage(name: loginscreen, page: (() => const LoginScreen())),

  ];
}
