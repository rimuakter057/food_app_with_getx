import 'package:flutter/material.dart';
import 'package:food_app_ui_getx/Routes/routes_name.dart';
import 'package:food_app_ui_getx/utils/color.dart';
import 'package:get/get.dart';
import '../Widget/custom_button.dart';
import '../Widget/custom_text_field.dart';
import '../Widget/emai_icon.dart';
import '../Widget/pass_icon.dart';
import 'Widget/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var medium = Theme.of(context).textTheme.bodyMedium;
    var small = Theme.of(context).textTheme.bodySmall;
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/splash_one.png"),
              Text(
                "The FoodApp",
                style: medium?.copyWith(
                    fontSize: MediaQuery.sizeOf(context).height * .04,
                    color: AppColors.primaryColor),
              ),
              Text(
                "deliver favourite food",
                style: small?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w400),
              ),
            SizedBox(
                height: size.height * .03,
              ),
              Text(
                "Login to your Account",
                style: medium,
              ),
              CustomTextField(
                small: small,
                prefixIcon: EmaiIcon(),
                hintText: 'Email',
              ),
              CustomTextField(
                small: small,
                prefixIcon: PassIcon(),
                hintText: 'Password',
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Text(
                "or continue with",
                style: small?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              LoginButton(small: small),
              Text(
                "forgot password?",
                style: small,
              ),
              SizedBox(
                height: size.height * .03,
              ),
              CustomButton(size: size, medium: medium, text: 'Next',
              onTap: (){
               Get.toNamed(RoutesName.createScreen);
              },
              )
            ],
          ),
        ),
      )),
    );
  }
}


