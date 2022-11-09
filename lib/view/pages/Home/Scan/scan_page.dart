import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:scanly/controllers/scan_controller.dart';
import 'package:scanly/view/constants.dart';
import 'package:scanly/view/pages/Home/home_page.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  late final ScanController scanController;
  late String message;

  @override
  void initState() {
    scanController = Get.put(ScanController());
    scanController.scanBarcodeNormal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //scanController.scanBarcodeNormal();
    return Scaffold(body: GetBuilder<ScanController>(builder: (controller) {
      log("ScanState: ${controller.state}");
      if (controller.state == ScanState.notFound) {
        message = "product_not_found".tr();
      } else if (controller.state == ScanState.noconnection) {
        message = "make_sure_you_internet".tr();
      }
      switch (controller.state) {
        case ScanState.idle:
          return const SizedBox();
        case ScanState.scanning:
          return const Center(
              child: CircularProgressIndicator(
            color: buttonColor,
          ));
        case ScanState.error:
          return const SizedBox();
        case ScanState.notFound:
        case ScanState.noconnection:
          return SizedBox.expand(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(message),
              const SizedBox(height: 22),
              GestureDetector(
                onTap: () {
                  scanController.scanBarcodeNormal();
                },
                child: Container(
                  height: 46,
                  width: Get.width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: buttonColor,
                  ),
                  child: Center(
                      child: Text(
                    "rescan".tr(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
              const SizedBox(height: 22),
              GestureDetector(
                onTap: () {
                  Get.offAll(() => const HomePage());
                },
                child: Container(
                  height: 46,
                  width: Get.width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: buttonColor,
                  ),
                  child: Center(
                      child: Text(
                    "go_to_history".tr(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ]),
          );
        default:
          return const SizedBox();
      }
    }));
  }
}
