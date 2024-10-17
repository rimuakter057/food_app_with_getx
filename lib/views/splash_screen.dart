import 'package:flutter/material.dart';
import 'package:food_app_ui_getx/Routes/routes_name.dart';
import 'package:food_app_ui_getx/Routes/routes_page.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:get/get.dart';
import '../utils/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme  = Theme.of(context);
    var small= theme.textTheme.bodySmall;
    var medium = theme.textTheme.bodyMedium;
    return SafeArea(
      child: IntroductionScreen(

          showSkipButton: true,
          done: Text("done",),
          skip: Text("Skip"),
          showNextButton: false,
          onDone: (){
            Get.toNamed(RoutesName.loginScreen);

          },
          pages: [
            PageViewModel(
              title: "Food App",
              body:"Deliver favourite food",
              image: Image.asset(
                  alignment: Alignment.center,
                  "assets/images/splash_two.png"),
              decoration: PageDecoration(
                titleTextStyle: medium!.copyWith(color: AppColors.primaryColor,fontSize: 50),
              )
            ),
            PageViewModel(
              title: "Get Started",
              body:"Deliver favourite food",
              image: Image.asset(
                  alignment: Alignment.center,
                  "assets/images/splash_one.png"),
                decoration: PageDecoration(
                  titleTextStyle: medium!.copyWith(color: AppColors.primaryColor,fontSize: 50),
                )
            ),
          ],
      ),
    );
  }
}
