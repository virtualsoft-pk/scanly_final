import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scanly/view/constants.dart';

import 'onboard_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const OnBoardPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox.expand(
        child: Container(
            color: buttonColor,
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Image.asset('assets/images/logo.png')))),
      ),
    );
  }
}
