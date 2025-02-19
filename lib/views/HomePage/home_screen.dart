import 'package:flutter/material.dart';
import 'package:food_app_ui_getx/utils/color.dart';

import '../Widget/common_appbar.dart';
import '../Widget/custom_searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var medium = Theme.of(context).textTheme.bodyMedium;
    var small = Theme.of(context).textTheme.bodySmall;
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(size: size),
              CustomSearchBar(size: size, small: small),
              Image.asset("assets/images/slider.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearest Restaurant",
                    style: medium,
                  ),
                  Text(
                    "view more",
                    style: small,
                  ),
                ],
              ),
              SizedBox(
                  height: size.height * .2,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Image.asset("assets/images/shop_image.png");
                      })),
              Text(
                "Popular menu",
                style: medium,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          height: size.height * .1,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.textFieldColor,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/food_image.png",
                                height: 80,
                                width: 80,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "vegetables noodles",
                                      style: small?.copyWith(
                                          color: Colors.black,
                                          fontSize: size.height * .02,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    const SizedBox(width: 10,),
                                    Text(
                                      "\$10",
                                      style: medium,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}




