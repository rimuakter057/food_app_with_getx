import 'package:flutter/material.dart';

class PassIcon extends StatelessWidget {
  final double? width;
  final double?height;
  const PassIcon({
    super.key, this.width, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/icon/lock_icon.png",
      height:height?? MediaQuery.sizeOf(context).height*.01,
      width:width?? MediaQuery.sizeOf(context).width*.03,
      fit: BoxFit.cover,
    );
  }
}