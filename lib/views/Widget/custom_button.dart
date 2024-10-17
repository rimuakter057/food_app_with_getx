import 'package:flutter/material.dart';

import '../../utils/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomButton({
    super.key,
    required this.size,
    required this.medium, required this.text, this.onTap,
  });

  final Size size;
  final TextStyle? medium;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height: size.height * .05,
        width: size.width * .5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.primaryColor,
        ),
        child: Center(
            child: Text(
              text,
              style: medium?.copyWith(
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}