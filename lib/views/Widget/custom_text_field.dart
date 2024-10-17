import 'package:flutter/material.dart';

import '../../utils/color.dart';

class CustomTextField extends StatelessWidget {
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.small,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
  });

  final TextStyle? small;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: AppColors.textFieldColor,
              filled: true,
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintStyle: small,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              )),
        ));
  }
}
