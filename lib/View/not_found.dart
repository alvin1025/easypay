import 'package:easypay/Routes/routes_name.dart';
import 'package:easypay/Utility/theme_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Expanded(child: SizedBox(),),
            Container(
              // margin: const EdgeInsets.only(top: 100, bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/not_found.png'))),
            ),
            Expanded(child: SizedBox(),),
            Text(
              'PAGE NOT FOUND',
              style: blackColorText.copyWith(fontSize: 30, fontWeight: bold),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(RoutesName().home);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: 265,
                height: 37,
                decoration: BoxDecoration(
                    color: blackColor, borderRadius: BorderRadius.circular(3)),
                child: Center(
                    child: Text(
                  "Go Home",
                  style: whiteColorText.copyWith(fontSize: 12),
                )),
              ),
            ),
            Expanded(child: SizedBox(),),
          ],
        ),
      )),
    );
  }
}
