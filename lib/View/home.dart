import 'package:easypay/Controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (Value) {
      return Scaffold(
          body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Container(
              child: Text('Testing'),
            )
          ],
        ),
      ));
    });
  }
}
