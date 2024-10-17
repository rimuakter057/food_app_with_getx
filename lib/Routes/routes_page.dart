
import 'package:food_app_ui_getx/Routes/routes_name.dart';
import 'package:food_app_ui_getx/views/LoginScreen/create_account.dart';
import 'package:food_app_ui_getx/views/LoginScreen/login_screen.dart';
import 'package:food_app_ui_getx/views/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutesPage {
  List <GetPage<dynamic>> routes= [
    GetPage(name: RoutesName.splashScreen,
        page:()=>SplashScreen()),
    GetPage(name: RoutesName.loginScreen,
        page:()=>LoginScreen()),
    GetPage(name: RoutesName.createScreen,
        page:()=>CreateScreen()),
  ];
}