import 'package:flutter/material.dart';
import 'package:food_app_ui_getx/Routes/routes_name.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/color.dart';
import '../Widget/custom_button.dart';
import '../Widget/custom_text_field.dart';
import '../Widget/emai_icon.dart';
import '../Widget/pass_icon.dart';
import 'Widget/login_button.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

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
                "SignUp for free",
                style: medium,
              ),
              CustomTextField(
                small: small,
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.primaryColor,
                  size: 50,
                ),
                hintText: 'User name',
              ),
              CustomTextField(
                small: small,
                prefixIcon: EmaiIcon(),
                hintText: 'Email',
              ),
              CustomTextField(
                small: small,
                prefixIcon: PassIcon(),
                suffixIcon: Icon(Icons.visibility_off_outlined),
                hintText: 'Password',
              ),
              SizedBox(
                height: size.height * .03,
              ),
              CustomButton(size: size, medium: medium, text: 'Create Account',
              onTap: (){
                Get.toNamed(RoutesName.homeScreen);
              },
              ),
              SizedBox(
                height: size.height * .015,
              ),
              Text(
                "already have an account?",
                style: small,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
