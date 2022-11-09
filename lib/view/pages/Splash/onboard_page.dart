import 'package:flutter/material.dart';
import 'package:scanly/view/constants.dart';
import 'package:scanly/view/pages/Home/home_page.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox.expand(
          child: Column(children: [
            SizedBox(
              height: size.height * 0.15,
            ),
            CircleAvatar(
              radius: size.width * 0.3,
              backgroundImage: const AssetImage('assets/images/onboard.png'),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            const Text(
              "scan_and_enjoy",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ).tr(),
            SizedBox(
              height: size.height * 0.01,
            ),
            SizedBox(
              width: size.width * 0.65,
              child: const Text(
                "scan_your_product_desc",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ).tr(),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Get.off(() => const HomePage());
              },
              child: Container(
                height: 50,
                width: 136,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: const Text(
                    "get_started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ).tr(),
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
          ]),
        ),
      ),
    );
  }
}
