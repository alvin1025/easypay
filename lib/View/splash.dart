import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:easypay/Routes/routes_name.dart';
import 'package:easypay/Utility/theme_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SpalshPage extends StatefulWidget {
  SpalshPage({Key? key}) : super(key: key);

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  List splashImage = [
    'assets/carousel1.png',
    'assets/carousel1.png',
    'assets/carousel1.png',
  ];

  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    int index = -1;
    Widget indicator(int index) { 
      return (Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        width: 8,
        height: 8,
        decoration: currentIndex == index
            ? BoxDecoration(
                color: lightGrayColor,
                border: Border.all(color: blackColor, width: 2),
              )
            : BoxDecoration(color: lightGrayColor),
      ));
    }

    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // gambar logo
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: 103,
                height: 23,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),

              // Carousel Image
              Container(
                width: MediaQuery.of(context).size.width,
                height: 342,
                child: CarouselSlider(
                    items:
                        splashImage.map((e) => Image.asset(e)).toList(),
                    options: CarouselOptions(
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          // print(index);
                          currentIndex = index;
                        });
                      },
                    )),
              ),

              // indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: splashImage.map((e) {
                  // index++;
                  index ++;
                  print(index);
                  return indicator(index);
                }).toList(),
              ),

              // Text
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 12),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2 - 11,
                decoration: BoxDecoration(color: whiteColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Easy Online Payment',
                      style: blackColorText.copyWith(
                          fontSize: 25, fontWeight: bold),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Make your payment experience more better today. No additional admin fee',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: lighGrayColorText.copyWith(
                          fontSize: 12, fontWeight: semiBold),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(RoutesName().home);
                      },
                      child: Container(
                        width: 265,
                        height: 37,
                        decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                            child: Text(
                          "Login",
                          style: whiteColorText.copyWith(fontSize: 12),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // Get.toNamed(RoutesName().notFound);
                      },
                      child: Container(
                        width: 265,
                        height: 37,
                        decoration: BoxDecoration(
                          border: Border.all(color: blackColor, width: 1),
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Center(
                            child: Text(
                          "Sign Up",
                          style: blackColorText.copyWith(fontSize: 12),
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
