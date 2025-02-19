import 'package:flutter/material.dart';

import '../../utils/color.dart';
import 'package:get/get.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.size,
    required this.small,
  });

  final Size size;
  final TextStyle? small;

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(
          horizontal: Get.width * .1, vertical: Get.height * .015),
      height: Get.height * .07,
      width: Get.width,
      child: SearchBar(
        hintText: "search for shop & restaurant",
      ),
    );










    /*Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: Get.height * .06,
          width: Get.width * .6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.textFieldColor,
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Icon(
                  Icons.search,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  height: Get.height * .05,
                  width: Get.width * .5,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "What food are you looking for?",
                        hintStyle: small?.copyWith(
                            fontSize: Get.height * .015)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Image.asset(
          "assets/icon/sear_row_icon.png",
          height: Get.height * .06,
          width: Get.width * .13,
          fit: BoxFit.cover,
        ),
      ],
    );*/
  }
}