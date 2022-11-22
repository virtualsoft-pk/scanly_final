import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:scanly/models/product.dart';
import 'package:scanly/models/result.dart';
import 'package:scanly/services/isar_service.dart';

import '../view/pages/Home/Scan/result_page.dart';
import '../view/pages/Home/home_page.dart';
import 'api_controller.dart';

enum ScanState {
  idle,
  scanning,
  error,
  notFound,
  noconnection,
}

class ScanController extends GetxController {
  ScanState state = ScanState.idle;
  late final ApiController apiController;
  Product? product;
  final isarService = IsarService();
  RxBool isDefaultExist = false.obs;

  @override
  void onInit() {
    apiController = Get.put(ApiController());
    state = ScanState.idle;
    super.onInit();
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      log("barcode: $barcodeScanRes");

      if (barcodeScanRes == '-1') {
        Get.offAll(() => const HomePage());
        updateScanState(ScanState.idle);
        log("message: scanning canceled");
      } else {
        updateScanState(ScanState.scanning);
        product = await apiController.getProduct(barcodeScanRes);

        if (product != null) {
          log("Final Point C: ${product!.pointsC}");

          final result = await saveProductInDB(product!);
          Get.off(() => ResultPage(
                result: result,
              ));
        } else {
          updateScanState(ScanState.notFound);
          log("message: product not found");
          return;
        }
        updateScanState(ScanState.idle);
      }
    } on NoConnectionException {
      updateScanState(ScanState.noconnection);
      log("message: no connection");
    } on PlatformException {
      updateScanState(ScanState.error);

      barcodeScanRes = 'Failed to get platform version.';
    }
  }

  updateScanState(ScanState state) {
    this.state = state;
    update();
  }

  Future<Result> saveProductInDB(Product product) async {
    /// Product to Isar Result Entity
    final Result result = Result()
      ..id = int.parse(product.barcode)
      ..prodcutType = product.productType
      ..barcode = product.barcode
      ..imgUrl = product.imageUrl
      ..name = product.name
      ..favorite = false
      ..genericName = product.genericName ?? ''
      ..energyKcal = product.energyKcal.toDouble()
      ..energyKj = product.energyKj.toDouble()
      ..sugarG = product.sugarG.toDouble()
      ..saturatedFatG = product.saturatedFatG.toDouble()
      ..sodiumMg = product.sodiumMg.toDouble()
      ..fiberG = product.fiberG.toDouble()
      ..fruitesVegetablesG = product.fruitesVegetablesG.toDouble()
      ..protiensG = product.protiensG.toDouble()
      ..sodium = product.sodium.toDouble()
      ..fat = product.fat.toDouble()
      ..saltG = product.saltG.toDouble()
      ..pointsC = product.pointsC
      ..energyKjPoints = product.energyKjPoints
      ..sugarGPoints = product.sugarGPoints
      ..saturatedFatGPoints = product.saturatedFatGPoints
      ..sodiumMgPoints = product.sodiumMgPoints
      ..fruiteVegeGPoints = product.fruiteVegeGPoints
      ..saltPoints = product.saltPoints
      ..proteinsGPoints = product.proteinsGPoints
      ..fiberGPoints = product.fiberGPoints
      ..additiveTags = product.additiveTags;

    isarService.saveProduct(result);
    return result;
  }

  int qualityForNormalProducts(Result result) {
    int additiveTotal = 0;
    int mark = 0;
    int sumOFPointA;
    int sumOFPointB;
    var pointC;
    sumOFPointA = result.sugarGPoints +
        result.energyKjPoints +
        result.saturatedFatGPoints +
        result.saltPoints;
    sumOFPointB =
        result.fruiteVegeGPoints + result.fiberGPoints + result.proteinsGPoints;
    log("Point A : $sumOFPointA");
    log("Point B: $sumOFPointB");

    if (sumOFPointA >= 11) {
      if (result.fruiteVegeGPoints >= 5) {
        pointC = sumOFPointA - sumOFPointB;
      } else {
        pointC = sumOFPointA - result.fruiteVegeGPoints - result.fiberGPoints;
      }
    } else {
      pointC = sumOFPointA - sumOFPointB;
    }
    if (result.prodcutType == ProductType.beverage) {
      switch (pointC) {
        case -15:
          mark = 80;
          break;
        case -14:
          mark = 80;
          break;
        case -13:
          mark = 80;
          break;
        case -12:
          mark = 80;
          break;
        case -11:
          mark = 80;
          break;
        case -10:
          mark = 80;
          break;
        case -9:
          mark = 80;
          break;
        case -8:
          mark = 80;
          break;
        case -7:
          mark = 80;
          break;
        case -6:
          mark = 80;
          break;
        case -5:
          mark = 80;
          break;
        case -4:
          mark = 80;
          break;
        case -3:
          mark = 77;
          break;
        case -2:
          mark = 74;
          break;
        case -1:
          mark = 71;
          break;
        case 0:
          mark = 68;
          break;
        case 1:
          mark = 65;
          break;
        case 2:
          mark = 57;
          break;
        case 3:
          mark = 49;
          break;
        case 4:
          mark = 41;
          break;
        case 5:
          mark = 33;
          break;
        case 6:
          mark = 15;
          break;
        case 7:
          mark = 11;
          break;
        case 8:
          mark = 7;
          break;
        case 9:
          mark = 3;
          break;

        default:
          mark = 0;
          break;
      }
      //  log("additiveTags : ${result.additiveTags[0]}");

      int b = 0;
      log("lenght is here  : ${result.additiveTags.length}");
      for (int i = 0; i < result.additiveTags.length; i++) {
        print("Enter in for loop");
        log("Here is the additiveTags  ${result.additiveTags[i].toUpperCase()}");
        additiveTotal = additiveTotal +
            getAdditive(result.additiveTags[i].toUpperCase(), b);
      }
      log("Here is the additiveTags values $additiveTotal");
    } else {
      switch (pointC) {
        case -15:
          mark = 100;
          break;
        case -14:
          mark = 100;
          break;
        case -13:
          mark = 100;
          break;
        case -12:
          mark = 100;
          break;
        case -11:
          mark = 100;
          break;
        case -10:
          mark = 100;
          break;
        case -9:
          mark = 100;
          break;
        case -8:
          mark = 100;
          break;
        case -7:
          mark = 100;
          break;
        case -6:
          mark = 100;
          break;
        case -5:
          mark = 100;
          break;
        case -4:
          mark = 100;
          break;
        case -3:
          mark = 100;
          break;
        case -2:
          mark = 100;
          break;
        case -1:
          mark = 90;
          break;
        case 0:
          mark = 80;
          break;
        case 1:
          mark = 75;
          break;
        case 2:
          mark = 70;
          break;
        case 3:
          mark = 65;
          break;
        case 4:
          mark = 60;
          break;
        case 5:
          mark = 55;
          break;
        case 6:
          mark = 50;
          break;
        case 7:
          mark = 45;
          break;
        case 8:
          mark = 40;
          break;
        case 9:
          mark = 35;
          break;
        case 10:
          mark = 30;
          break;
        case 11:
          mark = 15;
          break;
        case 12:
          mark = 13;
          break;
        case 13:
          mark = 11;
          break;
        case 14:
          mark = 9;
          break;
        case 15:
          mark = 7;
          break;
        case 16:
          mark = 5;
          break;
        case 17:
          mark = 3;
          break;
        case 18:
          mark = 1;
          break;
        case 19:
          mark = 0;
          break;
        case 20:
          mark = 0;
          break;
        case 21:
          mark = 0;
          break;
        default:
          mark = 0;
          break;
      }
    }

    //log("additiveTags : ${result.additiveTags[0].toUpperCase()}");
    result.mark = mark - additiveTotal;

    return mark;
  }

  int qualityForBeverageProducts(Result result) {
    int mark;
    int sumOFPointA;
    int sumOFPointB;
    var pointC;
    sumOFPointA = result.sugarGPoints +
        result.energyKjPoints +
        result.saturatedFatGPoints +
        result.saltPoints;
    sumOFPointB =
        result.fruiteVegeGPoints + result.fiberGPoints + result.proteinsGPoints;
    log("Point A : $sumOFPointA");
    log("Point B: $sumOFPointB");

    if (sumOFPointA >= 11) {
      if (result.fruiteVegeGPoints >= 5) {
        pointC = sumOFPointA - sumOFPointB;
      } else {
        pointC = sumOFPointA - result.fruiteVegeGPoints - result.fiberGPoints;
      }
    } else {
      pointC = sumOFPointA - sumOFPointB;
    }
    switch (pointC) {
      case -15:
        mark = 100;
        break;
      case -14:
        mark = 100;
        break;
      case -13:
        mark = 100;
        break;
      case -12:
        mark = 100;
        break;
      case -11:
        mark = 100;
        break;
      case -10:
        mark = 100;
        break;
      case -9:
        mark = 100;
        break;
      case -8:
        mark = 100;
        break;
      case -7:
        mark = 100;
        break;
      case -6:
        mark = 100;
        break;
      case -5:
        mark = 100;
        break;
      case -4:
        mark = 100;
        break;
      case -3:
        mark = 100;
        break;
      case -2:
        mark = 100;
        break;
      case -1:
        mark = 90;
        break;
      case 0:
        mark = 80;
        break;
      case 1:
        mark = 75;
        break;
      case 2:
        mark = 70;
        break;
      case 3:
        mark = 65;
        break;
      case 4:
        mark = 60;
        break;
      case 5:
        mark = 55;
        break;
      case 6:
        mark = 50;
        break;
      case 7:
        mark = 45;
        break;
      case 8:
        mark = 40;
        break;
      case 9:
        mark = 35;
        break;
      case 10:
        mark = 30;
        break;
      case 11:
        mark = 15;
        break;
      case 12:
        mark = 13;
        break;
      case 13:
        mark = 11;
        break;
      case 14:
        mark = 9;
        break;
      case 15:
        mark = 7;
        break;
      case 16:
        mark = 5;
        break;
      case 17:
        mark = 3;
        break;
      case 18:
        mark = 1;
        break;
      case 19:
        mark = 0;
        break;
      case 20:
        mark = 0;
        break;
      case 21:
        mark = 0;
        break;
      default:
        mark = 0;
        break;
    }
    result.mark = mark;
    log("additiveTags : ${result.additiveTags[0]}");
    int a = 0;
    int b = 0;
    log("lenght is here  : ${result.additiveTags.length}");
    for (int i = 0; i < result.additiveTags.length; i++) {
      print("Enter in for loop");
      log("Here is the additiveTags  ${result.additiveTags[i].toUpperCase()}");
      a = a + getAdditive(result.additiveTags[i].toUpperCase(), b);
    }
    log("Here is the additiveTags values $a");

    return mark;
  }

  int getAdditive(String value, int mark) {
    // int mark = 0;
    switch (value.toUpperCase()) {
      case 'E100':
        mark = 0;
        break;
      case 'E100I':
        mark = 0;
        break;
      case 'E100II':
        mark = 0;
        break;
      case 'E101':
        mark = 0;
        break;
      case 'E101I':
        mark = 0;
        break;
      case 'E101II':
        mark = 0;
        break;
      case 'E101III':
        mark = 0;
        break;
      case 'E130':
        mark = 0;
        break;
      case 'E140':
        mark = 0;
        break;
      case 'E141':
        mark = 0;
        break;
      case 'E141I':
        mark = 0;
        break;
      case 'E141II':
        mark = 0;
        break;
      case 'E150A':
        mark = 0;
        break;
      case 'E150C':
        mark = 0;
        break;
      case 'E153':
        mark = 0;
        break;
      case 'E160C':
        mark = 0;
        break;
      case 'E160D':
        mark = 0;
        break;
      case 'E160DI':
        mark = 0;
        break;
      case 'E160DII':
        mark = 0;
        break;
      case 'E160DIII':
        mark = 0;
        break;
      case 'E160E':
        mark = 0;
        break;
      case 'E160F':
        mark = 0;
        break;
      case 'E161':
        mark = 0;
        break;
      case 'E161A':
        mark = 0;
        break;
      case 'E161B':
        mark = 0;
        break;
      case 'E161BI':
        mark = 0;
        break;
      case 'E161BII':
        mark = 0;
        break;
      case 'E161C':
        mark = 0;
        break;
      case 'E161D':
        mark = 0;
        break;
      case 'E161E':
        mark = 0;
        break;
      case 'E161F':
        mark = 0;
        break;
      case 'E160J':
        mark = 0;
        break;
      case 'E162':
        mark = 0;
        break;
      case 'E163':
        mark = 0;
        break;
      case 'E163II':
        mark = 0;
        break;
      case 'E163III':
        mark = 0;
        break;
      case 'E163IV':
        mark = 0;
        break;
      case 'E163V':
        mark = 0;
        break;
      case 'E164':
        mark = 0;
        break;
      case 'E165':
        mark = 0;
        break;
      case 'E166':
        mark = 0;
        break;
      case 'E170':
        mark = 0;
        break;
      case 'E170I':
        mark = 0;
        break;
      case 'E170II':
        mark = 0;
        break;
      case 'E172':
        mark = 0;
        break;
      case 'E172I':
        mark = 0;
        break;
      case 'E172II':
        mark = 0;
        break;
      case 'E172III':
        mark = 0;
        break;
      case 'E175':
        mark = 0;
        break;
      case 'E180':
        mark = 0;
        break;
      case 'E182':
        mark = 0;
        break;
      case 'E200':
        mark = 0;
        break;
      case 'E201':
        mark = 0;
        break;
      case 'E202':
        mark = 0;
        break;
      case 'E203':
        mark = 0;
        break;
      case 'E234':
        mark = 0;
        break;
      case 'E262':
        mark = 0;
        break;
      case 'E262I':
        mark = 0;
        break;
      case 'E262II':
        mark = 0;
        break;
      case 'E263':
        mark = 0;
        break;
      case 'E270':
        mark = 0;
        break;
      case 'E290':
        mark = 0;
        break;
      case 'E297':
        mark = 0;
        break;
      case 'E300':
        mark = 0;
        break;
      case 'E301':
        mark = 0;
        break;
      case 'E302':
        mark = 0;
        break;
      case 'E303':
        mark = 0;
        break;
      case 'E304':
        mark = 0;
        break;
      case 'E305':
        mark = 0;
        break;
      case 'E306':
        mark = 0;
        break;
      case 'E307':
        mark = 0;
        break;
      case 'E307A':
        mark = 0;
        break;
      case 'E307B':
        mark = 0;
        break;
      case 'E307C':
        mark = 0;
        break;
      case 'E308':
        mark = 0;
        break;
      case 'E309':
        mark = 0;
        break;
      case 'E311':
        mark = 0;
        break;
      case 'E312':
        mark = 0;
        break;
      case 'E313':
        mark = 0;
        break;
      case 'E314':
        mark = 0;
        break;
      case 'E315':
        mark = 0;
        break;
      case 'E316':
        mark = 0;
        break;
      case 'E317':
        mark = 0;
        break;
      case 'E318':
        mark = 0;
        break;
      case 'E322':
        mark = 0;
        break;
      case 'E322I':
        mark = 0;
        break;
      case 'E322II':
        mark = 0;
        break;
      case 'E323':
        mark = 0;
        break;
      case 'E325':
        mark = 0;
        break;
      case 'E326':
        mark = 0;
        break;
      case 'E327':
        mark = 0;
        break;
      case 'E328':
        mark = 0;
        break;
      case 'E329':
        mark = 0;
        break;
      case 'E331':
        mark = 0;
        break;
      case 'E321I':
        mark = 0;
        break;
      case 'E331II':
        mark = 0;
        break;
      case 'E331III':
        mark = 0;
        break;
      case 'E332':
        mark = 0;
        break;
      case 'E332I':
        mark = 0;
        break;
      case 'E332II':
        mark = 0;
        break;
      case 'E333':
        mark = 0;
        break;

      case 'E333I':
        mark = 0;
        break;
      case 'E333II':
        mark = 0;
        break;
      case 'E334':
        mark = 0;
        break;
      case 'E335':
        mark = 0;
        break;
      case 'E335I':
        mark = 0;
        break;
      case 'E336':
        mark = 0;
        break;
      case 'E336I':
        mark = 0;
        break;
      case 'E336II':
        mark = 0;
        break;
      case 'E337':
        mark = 0;
        break;
      case 'E339':
        mark = 0;
        break;
      case 'E339I':
        mark = 0;
        break;
      case 'E339II':
        mark = 0;
        break;
      case 'E339III':
        mark = 0;
        break;
      case 'E340':
        mark = 0;
        break;
      case 'E340I':
        mark = 0;
        break;
      case 'E340II':
        mark = 0;
        break;
      case 'E340III':
        mark = 0;
        break;
      case 'E341':
        mark = 0;
        break;
      case 'E341I':
        mark = 0;
        break;
      case 'E341II':
        mark = 0;
        break;
      case 'E341III':
        mark = 0;
        break;
      case 'E342':
        mark = 0;
        break;
      case 'E342I':
        mark = 0;
        break;
      case 'E342II':
        mark = 0;
        break;
      case 'E343':
        mark = 0;
        break;
      case 'E343I':
        mark = 0;
        break;
      case 'E343II':
        mark = 0;
        break;
      case 'E344':
        mark = 0;
        break;
      case 'E345':
        mark = 0;
        break;
      case 'E349':
        mark = 0;
        break;
      case 'E350':
        mark = 0;
        break;
      case 'E350I':
        mark = 0;
        break;
      case 'E350II':
        mark = 0;
        break;
      case 'E351':
        mark = 0;
        break;
      case 'E351I':
        mark = 0;
        break;
      case 'E352':
        mark = 0;
        break;
      case 'E352I':
        mark = 0;
        break;
      case 'E352II':
        mark = 0;
        break;
      case 'E353':
        mark = 0;
        break;
      case 'E354':
        mark = 0;
        break;
      case 'E356':
        mark = 0;
        break;
      case 'E357':
        mark = 0;
        break;
      case 'E359':
        mark = 0;
        break;
      case 'E363':
        mark = 0;
        break;
      case 'E364':
        mark = 0;
        break;
      case 'E364I':
        mark = 0;
        break;
      case 'E364II':
        mark = 0;
        break;
      case 'E365':
        mark = 0;
        break;
      case 'E366':
        mark = 0;
        break;
      case 'E367':
        mark = 0;
        break;
      case 'E368':
        mark = 0;
        break;
      case 'E370':
        mark = 0;
        break;
      case 'E380':
        mark = 0;
        break;
      case 'E381':
        mark = 0;
        break;
      case 'E383':
        mark = 0;
        break;
      case 'E384':
        mark = 0;
        break;
      case 'E387':
        mark = 0;
        break;
      case 'E388':
        mark = 0;
        break;
      case 'E389':
        mark = 0;
        break;
      case 'E390':
        mark = 0;
        break;
      case 'E391':
        mark = 0;
        break;
      case 'E399':
        mark = 0;
        break;
      case 'E400':
        mark = 0;
        break;
      case 'E401':
        mark = 0;
        break;
      case 'E402':
        mark = 0;
        break;
      case 'E403':
        mark = 0;
        break;
      case 'E404':
        mark = 0;
        break;
      case 'E408':
        mark = 0;
        break;
      case 'E410':
        mark = 0;
        break;
      case 'E414':
        mark = 0;
        break;
      case 'E417':
        mark = 0;
        break;
      case 'E418':
        mark = 0;
        break;
      case 'E419':
        mark = 0;
        break;
      case 'E424':
        mark = 0;
        break;
      case 'E426':
        mark = 0;
        break;
      case 'E427':
        mark = 0;
        break;
      case 'E428':
        mark = 0;
        break;
      case 'E429':
        mark = 0;
        break;
      case 'E440':
        mark = 0;
        break;
      case 'E441':
        mark = 0;
        break;
      case 'E442':
        mark = 0;
        break;
      case 'E444':
        mark = 0;
        break;
      case 'E446':
        mark = 0;
        break;
      case 'E450':
        mark = 0;
        break;
      case 'E450VIII':
        mark = 0;
        break;
      case 'E451':
        mark = 0;
        break;
      case 'E451I':
        mark = 0;
        break;
      case 'E452':
        mark = 0;
        break;

      case 'E452V':
        mark = 0;
        break;
      case 'E452VI':
        mark = 0;
        break;
      case 'E457':
        mark = 0;
        break;
      case 'E458':
        mark = 0;
        break;
      case 'E459':
        mark = 0;
        break;
      case 'E467':
        mark = 0;
        break;
      case 'E470':
        mark = 0;
        break;
      case 'E471':
        mark = 0;
        break;
      case 'E472A':
        mark = 0;
        break;
      case 'E472B':
        mark = 0;
        break;
      case 'E472C':
        mark = 0;
        break;
      case 'E472D':
        mark = 0;
        break;
      case 'E472E':
        mark = 0;
        break;
      case 'E472F':
        mark = 0;
        break;
      case 'E472G':
        mark = 0;
        break;
      case 'E473':
        mark = 0;
        break;
      case 'E473A':
        mark = 0;
        break;

      case 'E474':
        mark = 0;
        break;

      case 'E475':
        mark = 0;
        break;
      case 'E479':
        mark = 0;
        break;
      case 'E479B':
        mark = 0;
        break;
      case 'E481':
        mark = 0;
        break;
      case 'E481I':
        mark = 0;
        break;
      case 'E481II':
        mark = 0;
        break;

      case 'E482':
        mark = 0;
        break;
      case 'E482I':
        mark = 0;
        break;
      case 'E482II':
        mark = 0;
        break;
      case 'E483':
        mark = 0;
        break;
      case 'E484':
        mark = 0;
        break;
      case 'E485':
        mark = 0;
        break;
      case 'E486':
        mark = 0;
        break;
      case 'E488':
        mark = 0;
        break;
      case 'E489':
        mark = 0;
        break;
      case 'E491':
        mark = 0;
        break;
      case 'E492':
        mark = 0;
        break;
      case 'E493':
        mark = 0;
        break;
      case 'E495':
        mark = 0;
        break;
      case 'E496':
        mark = 0;
        break;
      case 'E500':
        mark = 0;
        break;
      case 'E500I':
        mark = 0;
        break;
      case 'E500II':
        mark = 0;
        break;
      case 'E500III':
        mark = 0;
        break;
      case 'E501':
        mark = 0;
        break;
      case 'E501I':
        mark = 0;
        break;
      case 'E501II':
        mark = 0;
        break;
      case 'E502':
        mark = 0;
        break;
      case 'E503':
        mark = 0;
        break;
      case 'E503I':
        mark = 0;
        break;

      case 'E503II':
        mark = 0;
        break;

      case 'E504':
        mark = 0;
        break;
      case 'E504I':
        mark = 0;
        break;
      case 'E504II':
        mark = 0;
        break;
      case 'E505':
        mark = 0;
        break;
      case 'E512':
        mark = 0;
        break;
      case 'E535':
        mark = 0;
        break;
      case 'E536':
        mark = 0;
        break;
      case 'E537':
        mark = 0;
        break;
      case 'E538':
        mark = 0;
        break;
      case 'E539':
        mark = 0;
        break;
      case 'E540':
        mark = 0;
        break;
      case 'E542':
        mark = 0;
        break;
      case 'E544':
        mark = 0;
        break;
      case 'E545':
        mark = 0;
        break;
      case 'E546':
        mark = 0;
        break;
      case 'E550':
        mark = 0;
        break;
      case 'E550I':
        mark = 0;
        break;
      case 'E550II':
        mark = 0;
        break;
      case 'E552':
        mark = 0;
        break;
      case 'E553':
        mark = 0;
        break;
      case 'E553I':
        mark = 0;
        break;
      case 'E553II':
        mark = 0;
        break;
      case 'E570':
        mark = 0;
        break;
      case 'E572':
        mark = 0;
        break;
      case 'E575':
        mark = 0;
        break;
      case 'E576':
        mark = 0;
        break;
      case 'E577':
        mark = 0;
        break;
      case 'E578':
        mark = 0;
        break;
      case 'E579':
        mark = 0;
        break;
      case 'E580':
        mark = 0;
        break;
      case 'E585':
        mark = 0;
        break;
      case 'E586':
        mark = 0;
        break;
      case 'E630':
        mark = 0;
        break;
      case 'E631':
        mark = 0;
        break;
      case 'E632':
        mark = 0;
        break;
      case 'E633':
        mark = 0;
        break;
      case 'E634':
        mark = 0;
        break;
      case 'E635':
        mark = 0;
        break;
      case 'E637':
        mark = 0;
        break;
      case 'E638':
        mark = 0;
        break;
      case 'E639':
        mark = 0;
        break;
      case 'E640':
        mark = 0;
        break;
      case 'E641':
        mark = 0;
        break;
      case 'E642':
        mark = 0;
        break;
      case 'E650':
        mark = 0;
        break;
      case 'E900':
        mark = 0;
        break;
      case 'E900A':
        mark = 0;
        break;
      case 'E900B':
        mark = 0;
        break;
      case 'E901':
        mark = 0;
        break;
      case 'E902':
        mark = 0;
        break;
      case 'E903':
        mark = 0;
        break;
      case 'E904':
        mark = 0;
        break;
      case 'E906':
        mark = 0;
        break;
      case 'E907':
        mark = 0;
        break;
      case 'E908':
        mark = 0;
        break;
      case 'E909':
        mark = 0;
        break;
      case 'E910':
        mark = 0;
        break;
      case 'E911':
        mark = 0;
        break;
      case 'E912':
        mark = 0;
        break;
      case 'E913':
        mark = 0;
        break;
      case 'E915':
        mark = 0;
        break;
      case 'E916':
        mark = 0;
        break;
      case 'E918':
        mark = 0;
        break;
      case 'E919':
        mark = 0;
        break;
      case 'E920':
        mark = 0;
        break;
      case 'E922':
        mark = 0;
        break;
      case 'E923':
        mark = 0;
        break;
      case 'E927':
        mark = 0;
        break;
      case 'E927B':
        mark = 0;
        break;
      case 'E928':
        mark = 0;
        break;
      case 'E929':
        mark = 0;
        break;
      case 'E930':
        mark = 0;
        break;
      case 'E938':
        mark = 0;
        break;
      case 'E939':
        mark = 0;
        break;
      case 'E941':
        mark = 0;
        break;
      case 'E945':
        mark = 0;
        break;
      case 'E946':
        mark = 0;
        break;
      case 'E948':
        mark = 0;
        break;
      case 'E949':
        mark = 0;
        break;
      case 'E955':
        mark = 0;
        break;
      case 'E956':
        mark = 0;
        break;
      case 'E957':
        mark = 0;
        break;
      case 'E959':
        mark = 0;
        break;
      case 'E960':
        mark = 0;
        break;
      case 'E961':
        mark = 0;
        break;
      case 'E963':
        mark = 0;
        break;
      case 'E964':
        mark = 0;
        break;
      case 'E968':
        mark = 0;
        break;
      case 'E999':
        mark = 0;
        break;
      case 'E999I':
        mark = 0;
        break;
      case 'E999II':
        mark = 0;
        break;
      case 'E1000':
        mark = 0;
        break;
      case 'E1001':
        mark = 0;
        break;
      case 'E1001I':
        mark = 0;
        break;
      case 'E1001II':
        mark = 0;
        break;
      case 'E1001III':
        mark = 0;
        break;
      case 'E1001IV':
        mark = 0;
        break;
      case 'E1001V':
        mark = 0;
        break;
      case 'E1001VI':
        mark = 0;
        break;
      case 'E1100':
        mark = 0;
        break;
      case 'E1101':
        mark = 0;
        break;
      case 'E1101I':
        mark = 0;
        break;
      case 'E1101II':
        mark = 0;
        break;
      case 'E1101III':
        mark = 0;
        break;
      case 'E1101IV':
        mark = 0;
        break;
      case 'E1102':
        mark = 0;
        break;
      case 'E1103':
        mark = 0;
        break;
      case 'E1104':
        mark = 0;
        break;
      case 'E1202':
        mark = 0;
        break;
      case 'E1203':
        mark = 0;
        break;
      case 'E1204':
        mark = 0;
        break;
      case 'E1505':
        mark = 0;
        break;
      case 'E1517':
        mark = 0;
        break;
      case 'E101A':
        mark = -3;
        break;
      case 'E161G':
        mark = -3;
        break;
      case 'E161H':
        mark = -3;
        break;
      case 'E161HI':
        mark = -3;
        break;
      case 'E161HII':
        mark = -3;
        break;
      case 'E161I':
        mark = -3;
        break;
      case 'E174':
        mark = -3;
        break;
      case 'E181':
        mark = -3;
        break;
      case 'E235':
        mark = -3;
        break;
      case 'E264':
        mark = -3;
        break;
      case 'E330':
        mark = -3;
        break;
      case 'E355':
        mark = -3;
        break;
      case 'E405':
        mark = -3;
        break;
      case 'E406':
        mark = -3;
        break;
      case 'E409':
        mark = -3;
        break;
      case 'E412':
        mark = -3;
        break;
      case 'E413':
        mark = -3;
        break;
      case 'E415':
        mark = -3;
        break;
      case 'E416':
        mark = -3;
        break;
      case 'E420':
        mark = -3;
        break;
      case 'E420I':
        mark = -3;
        break;
      case 'E420II':
        mark = -3;
        break;
      case 'E425':
        mark = -3;
        break;
      case 'E445':
        mark = -3;
        break;
      case 'E460':
        mark = -3;
        break;
      case 'E460I':
        mark = -3;
        break;
      case 'E460II':
        mark = -3;
        break;
      case 'E461':
        mark = -3;
        break;
      case 'E462':
        mark = -3;
        break;
      case 'E463':
        mark = -3;
        break;
      case 'E464':
        mark = -3;
        break;
      case 'E465':
        mark = -3;
        break;
      case 'E466':
        mark = -3;
        break;
      case 'E468':
        mark = -3;
        break;
      case 'E469':
        mark = -3;
        break;
      case 'E470I':
        mark = -3;
        break;
      case 'E470II':
        mark = -3;
        break;
      case 'E477':
        mark = -3;
        break;
      case 'E478':
        mark = -3;
        break;
      case 'E480':
        mark = -3;
        break;
      case 'E487':
        mark = -3;
        break;
      case 'E507':
        mark = -3;
        break;
      case 'E508':
        mark = -3;
        break;
      case 'E509':
        mark = -3;
        break;
      case 'E511':
        mark = -3;
        break;
      case 'E514':
        mark = -3;
        break;
      case 'E515':
        mark = -3;
        break;
      case 'E516':
        mark = -3;
        break;
      case 'E517':
        mark = -3;
        break;
      case 'E518':
        mark = -3;
        break;
      case 'E524':
        mark = -3;
        break;
      case 'E525':
        mark = -3;
        break;
      case 'E526':
        mark = -3;
        break;
      case 'E527':
        mark = -3;
        break;
      case 'E528':
        mark = -3;
        break;
      case 'E529':
        mark = -3;
        break;
      case 'E530':
        mark = -3;
        break;
      case 'E541':
        mark = -3;
        break;
      case 'E541I':
        mark = -3;
        break;
      case 'E541II':
        mark = -3;
        break;
      case 'E551':
        mark = -3;
        break;
      case 'E553III':
        mark = -3;
        break;
      case 'E554':
        mark = -3;
        break;
      case 'E555':
        mark = -3;
        break;
      case 'E556':
        mark = -3;
        break;
      case 'E557':
        mark = -3;
        break;
      case 'E558':
        mark = -3;
        break;
      case 'E560':
        mark = -3;
        break;
      case 'E574':
        mark = -3;
        break;
      case 'E636':
        mark = -3;
        break;
      case 'E905':
        mark = -3;
        break;
      case 'E905CI':
        mark = -3;
        break;
      case 'E905CII':
        mark = -3;
        break;
      case 'E917':
        mark = -3;
        break;
      case 'E921':
        mark = -3;
        break;
      case 'E942':
        mark = -3;
        break;
      case 'E943A':
        mark = -3;
        break;
      case 'E943B':
        mark = -3;
        break;
      case 'E944':
        mark = -3;
        break;
      case 'E953':
        mark = -3;
        break;
      case 'E958':
        mark = -3;
        break;
      case 'E965':
        mark = -3;
        break;

      case 'E965I':
        mark = -3;
        break;
      case 'E965II':
        mark = -3;
        break;
      case 'E966':
        mark = -3;
        break;
      case 'E967':
        mark = -3;
        break;
      case 'E1200':
        mark = -3;
        break;
      case 'E1518':
        mark = -3;
        break;
      case 'E160A':
        mark = -15;
        break;
      case 'E160AI':
        mark = -15;
        break;
      case 'E160AII':
        mark = -15;
        break;
      case 'E160AIII':
        mark = -15;
        break;
      case 'E160AIV':
        mark = -15;
        break;
      case 'E233':
        mark = -15;
        break;
      case 'E241':
        mark = -15;
        break;
      case 'E243':
        mark = -15;
        break;

      case 'E260':
        mark = -15;
        break;
      case 'E261':
        mark = -15;
        break;
      case 'E261I':
        mark = -15;
        break;
      case 'E261II':
        mark = -15;
        break;

      case 'E265':
        mark = -15;
        break;
      case 'E266':
        mark = -15;
        break;
      case 'E280':
        mark = -15;
        break;
      case 'E281':
        mark = -15;
        break;
      case 'E282':
        mark = -15;
        break;
      case 'E283':
        mark = -15;
        break;
      case 'E296':
        mark = -15;
        break;
      case 'E324':
        mark = -15;
        break;
      case 'E338':
        mark = -15;
        break;
      case 'E375':
        mark = -15;
        break;
      case 'E407':
        mark = -15;
        break;
      case 'E407A':
        mark = -15;
        break;
      case 'E510':
        mark = -15;
        break;

      case 'E905':
        mark = -15;
        break;
      case 'E905A':
        mark = -15;
        break;

      case 'E905B':
        mark = -15;
        break;
      case 'E914':
        mark = -15;
        break;
      case 'E102':
        mark = -20;
        break;
      case 'E107':
        mark = -20;
        break;
      case 'E120':
        mark = -20;
        break;
      case 'E121':
        mark = -20;
        break;
      case 'E122':
        mark = -20;
        break;
      case 'E125':
        mark = -20;
        break;
      case 'E126':
        mark = -20;
        break;
      case 'E129':
        mark = -20;
        break;
      case 'E131':
        mark = -20;
        break;
      case 'E132':
        mark = -20;
        break;
      case 'E133':
        mark = -20;
        break;
      case 'E142':
        mark = -20;
        break;

      case 'E150B':
        mark = -20;
        break;
      case 'E150D':
        mark = -20;
        break;

      case 'E151':
        mark = -20;
        break;

      case 'E154':
        mark = -20;
        break;
      case 'E160B':
        mark = -20;
        break;

      case 'E160BI':
        mark = -20;
        break;
      case 'E160BII':
        mark = -20;
        break;

      case 'E171':
        mark = -20;
        break;

      case 'E209':
        mark = -20;
        break;

      case 'E210':
        mark = -20;
        break;

      case 'E211':
        mark = -20;
        break;

      case 'E212':
        mark = -20;
        break;
      case 'E213':
        mark = -20;
        break;
      case 'E214':
        mark = -20;
        break;
      case 'E215':
        mark = -20;
        break;
      case 'E216':
        mark = -20;
        break;
      case 'E217':
        mark = -20;
        break;
      case 'E218':
        mark = -20;
        break;
      case 'E219':
        mark = -20;
        break;
      case 'E220':
        mark = -20;
        break;
      case 'E221':
        mark = -20;
        break;
      case 'E222':
        mark = -20;
        break;
      case 'E223':
        mark = -20;
        break;
      case 'E224':
        mark = -20;
        break;
      case 'E225':
        mark = -20;
        break;

      case 'E226':
        mark = -20;
        break;
      case 'E227':
        mark = -20;
        break;
      case 'E228':
        mark = -20;
        break;
      case 'E239':
        mark = -20;
        break;
      case 'E242':
        mark = -20;
        break;
      case 'E251':
        mark = -20;
        break;
      case 'E252':
        mark = -20;
        break;

      case 'E284':
        mark = -20;
        break;
      case 'E285':
        mark = -20;
        break;

      case 'E321':
        mark = -20;
        break;
      case 'E411':
        mark = -20;
        break;
      case 'E421':
        mark = -20;
        break;
      case 'E422':
        mark = -20;
        break;
      case 'E430':
        mark = -20;
        break;
      case 'E431':
        mark = -20;
        break;
      case 'E432':
        mark = -20;
        break;
      case 'E433':
        mark = -20;
        break;
      case 'E435':
        mark = -20;
        break;
      case 'E436':
        mark = -20;
        break;
      case 'E450I':
        mark = -20;
        break;
      case 'E450II':
        mark = -20;
        break;
      case 'E450III':
        mark = -20;
        break;
      case 'E450IV':
        mark = -20;
        break;
      case 'E450V':
        mark = -20;
        break;
      case 'E450VI':
        mark = -20;
        break;
      case 'E450VII':
        mark = -20;
        break;
      case 'E451II':
        mark = -20;
        break;
      case 'E452I':
        mark = -20;
        break;
      case 'E452II':
        mark = -20;
        break;
      case 'E452III':
        mark = -20;
        break;
      case 'E452IV':
        mark = -20;
        break;
      case 'E476':
        mark = -20;
        break;

      case 'E513':
        mark = -20;
        break;
      case 'E620':
        mark = -20;
        break;
      case 'E621':
        mark = -20;
        break;
      case 'E622':
        mark = -20;
        break;
      case 'E623':
        mark = -20;
        break;

      case 'E624':
        mark = -20;
        break;
      case 'E625':
        mark = -20;
        break;
      case 'E626':
        mark = -20;
        break;
      case 'E627':
        mark = -20;
        break;

      case 'E628':
        mark = -20;
        break;
      case 'E629':
        mark = -20;
        break;
      case 'E905D':
        mark = -20;
        break;
      case 'E905E':
        mark = -20;
        break;
      case 'E905F':
        mark = -20;
        break;
      case 'E905G':
        mark = -20;
        break;

      case 'E927a':
        mark = -20;
        break;
      case 'E940':
        mark = -20;
        break;
      case 'E950':
        mark = -20;
        break;
      case 'E954':
        mark = -20;
        break;
      case 'E954I':
        mark = -20;
        break;
      case 'E954II':
        mark = -20;
        break;
      case 'E954III':
        mark = -20;
        break;
      case 'E954IV':
        mark = -20;
        break;
      case 'E962':
        mark = -20;
        break;
      case 'E1105':
        mark = -20;
        break;
      case 'E1201':
        mark = -20;
        break;
      case 'E1400':
        mark = -20;
        break;
      case 'E1401':
        mark = -20;
        break;
      case 'E1402':
        mark = -20;
        break;
      case 'E1403':
        mark = -20;
        break;
      case 'E1404':
        mark = -20;
        break;
      case 'E1405':
        mark = -20;
        break;
      case 'E1410':
        mark = -20;
        break;
      case 'E1411':
        mark = -20;
        break;
      case 'E1412':
        mark = -20;
        break;
      case 'E1413':
        mark = -20;
        break;
      case 'E1414':
        mark = -20;
        break;
      case 'E1420':
        mark = -20;
        break;
      case 'E1421':
        mark = -20;
        break;
      case 'E1422':
        mark = -20;
        break;
      case 'E1423':
        mark = -20;
        break;
      case 'E1440':
        mark = -20;
        break;
      case 'E1442':
        mark = -20;
        break;
      case 'E1443':
        mark = -20;
        break;
      case 'E1450':
        mark = -20;
        break;
      case 'E1451':
        mark = -20;
        break;
      case 'E1452':
        mark = -20;
        break;
      case 'E1503':
        mark = -20;
        break;
      case 'E1519':
        mark = -20;
        break;
      case 'E1520':
        mark = -20;
        break;
      case 'E1521':
        mark = -20;
        break;
      case 'E104':
        mark = -30;
        break;
      case 'E110':
        mark = -30;
        break;
      case 'E123':
        mark = -30;
        break;
      case 'E127':
        mark = -30;
        break;
      case 'E152':
        mark = -30;
        break;
      case 'E230':
        mark = -30;
        break;
      case 'E231':
        mark = -30;
        break;
      case 'E232':
        mark = -30;
        break;
      case 'E236':
        mark = -30;
        break;
      case 'E237':
        mark = -30;
        break;
      case 'E238':
        mark = -30;
        break;
      case 'E249':
        mark = -30;
        break;
      case 'E250':
        mark = -30;
        break;
      case 'E310':
        mark = -30;
        break;
      case 'E319':
        mark = -30;
        break;
      case 'E320':
        mark = -30;
        break;
      case 'E385':
        mark = -30;
        break;
      case 'E443':
        mark = -30;
        break;
      case 'E519':
        mark = -30;
        break;
      case 'E520':
        mark = -30;
        break;
      case 'E521':
        mark = -30;
        break;
      case 'E522':
        mark = -30;
        break;
      case 'E523':
        mark = -30;
        break;
      case 'E559':
        mark = -30;
        break;
      case 'E525':
        mark = -30;
        break;
      case 'E551':
        mark = -30;
        break;
      case 'E103':
        mark = -45;
        break;
      case 'E111':
        mark = -45;
        break;
      case 'E124':
        mark = -45;
        break;
      case 'E128':
        mark = -45;
        break;
      case 'E173':
        mark = -45;
        break;
      case 'E952':
        mark = -45;
        break;
      case 'E952':
        mark = -45;
        break;
      case 'E952I':
        mark = -45;
        break;
      case 'E952II':
        mark = -45;
        break;
      case 'E952III':
        mark = -45;
        break;
      case 'E952IV':
        mark = -45;
        break;
      case 'E143':
        mark = -45;
        break;
      case 'E240':
        mark = -45;
        break;
      case 'E386':
        mark = -45;
        break;
      case 'E924':
        mark = -45;
        break;
      case 'E924A':
        mark = -45;
        break;
      case 'E924B':
        mark = -45;
        break;
      case 'E926':
        mark = -45;
        break;
    }
    return mark;
  }
}
