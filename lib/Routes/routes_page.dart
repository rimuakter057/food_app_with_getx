
import 'package:food_app_ui_getx/Routes/routes_name.dart';
import 'package:food_app_ui_getx/views/CryptoPage/crypto_home.dart';
import 'package:food_app_ui_getx/views/LoginScreen/create_account.dart';
import 'package:food_app_ui_getx/views/LoginScreen/login_screen.dart';
import 'package:food_app_ui_getx/views/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/CryptoPage/crypto_page.dart';
import '../views/HomePage/home_screen.dart';

class RoutesPage {
  List <GetPage<dynamic>> routes= [
    GetPage(name: RoutesName.splashScreen,
        page:()=>SplashScreen()),
    GetPage(name: RoutesName.loginScreen,
        page:()=>LoginScreen()),
    GetPage(name: RoutesName.createScreen,
        page:()=>CreateScreen()),
    GetPage(name: RoutesName.homeScreen,
        page:()=>HomeScreen()),
    GetPage(name: RoutesName.cryptoPage, page:()=>CryptoPage()),
    GetPage(name: RoutesName.cryptoHome,
        page: ()=>CryptoHome())
  ];
}