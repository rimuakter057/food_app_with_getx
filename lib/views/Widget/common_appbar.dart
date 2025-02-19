import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Find your \nFavorite food",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Image.asset(
          "assets/icon/notification.png",
          height: size.height * .06,
          width: size.width * .13,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}