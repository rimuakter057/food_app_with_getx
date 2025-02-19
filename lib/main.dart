import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Routes/routes_name.dart';
import 'Routes/routes_page.dart';

void main() {
  runApp(const FoodApp());
}
class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: const Color(0xFF000000),
            fontSize: size.height*.045,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: TextStyle(
            color: const Color(0xFF000000),
            fontSize: size.height*.03,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
            color: const Color(0xFFFA7C30),
            fontSize: size.height*.022,
            fontWeight: FontWeight.w300,
          ),
        )
      ),
      getPages:RoutesPage().routes ,
      initialRoute: RoutesName.loginScreen,
    );
  }
}

