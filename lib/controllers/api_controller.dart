import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../models/product.dart';
import '../services/api_service.dart';
import '../utils/helper.dart';

class ApiController extends GetxController {
  Product? product;

  final ProductProvier _provider = ProductProvier();

  Future<Product?> getProduct(String barcode) async {
    await InternetConnectionChecker().hasConnection.then((value) {
      log("hasConnection: ${value.toString()}");

      if (!value) {
        throw NoConnectionException("No Internet Connection");
      }
    });

    var response = await _provider.getProduct(barcode);
    if (!response.status.hasError && response.bodyString != null) {
      var decodedResponse = jsonDecode(response.bodyString!);
      var productFound = decodedResponse['status'] == 1;
      log("ProductFound: $productFound");
      if (productFound) {
        try {
          final jsonProduct = decodedResponse['product'];
          final ProductType productType =
              getProductType(jsonProduct['categories'] ?? "");
          log("Category there: ${jsonProduct['categories']}");
          log("Product Type: $productType");

          List<dynamic> tags = jsonProduct['additives_original_tags'] ?? [];
          tags = tags.map<String>((e) {
            e = cast<String>(e);
            e = e.replaceAll("en:", "");
            return e;
          }).toList();

          log("Tags: $tags");

          final jsonNutriments = jsonProduct['nutriments'];

          final num? sodium100g = jsonNutriments['sodium_value'];
          final num? fat = jsonNutriments['fat_value'];
          final num? energyKcal100g = jsonNutriments['energy-kcal'] ??
              jsonNutriments['energy-kcal_100g'] ??
              jsonNutriments['energy-kcal_value'];

          log("message: ${jsonProduct['product_name']}");

          /// Nutriments values per 100 g
          final num? sugarG = jsonNutriments['sugars_100g'];
          final num? saturatedFatG = jsonNutriments['saturated-fat_100g'] ??
              jsonNutriments['saturated-fat'];
          final num? fruitesVegetablesG = jsonNutriments[
              'fruits-vegetables-nuts-estimate-from-ingredients_100g'];
          final num? fiberG = jsonNutriments['fiber'] ??
              jsonNutriments['fiber_100g'] ??
              jsonNutriments['fiber_value'];
          final num? protiensG = jsonNutriments['proteins'] ??
              jsonNutriments['proteins_100g'] ??
              jsonNutriments['proteins_value'];
          final num? saltG =
              jsonNutriments['salt_100g'] ?? jsonNutriments['salt_value'];
          final num? energyKj =
              jsonNutriments['energy-kj_100g'] ?? energyKcal100g! * 4.184;

          log("\n ---------------------------- NUTRIMENTS ---------------------------- ");
          log("Sodium100g: $sodium100g");
          log("Fat: $fat");
          log("EnergyKcal100g: $energyKcal100g");
          log("SugarG: $sugarG");
          log("SaturatedFatG: $saturatedFatG");
          log("FruitesVegetablesG: $fruitesVegetablesG");
          log("FiberG: $fiberG");
          log("ProtiensG: $protiensG");
          log("SaltG: $saltG");
          log("EnergyKj: $energyKj");
          log(" -------------------------------------------------------------------- \n");

          final double? sodiumMg =
              sodium100g != null ? sodium100g * 1000 : null;

          /// Specific for Addef Fat Product
          final double? saturatedFatPer = saturatedFatG != null && fat != null
              ? (saturatedFatG / fat) * 100
              : null;

          /// Nutriments Points
          final int? sugarGPoints = sugarG == null
              ? null
              : productType == ProductType.beverage
                  ? calSugarPointsForBeverages(sugarG)
                  : calSugarPoints(sugarG);
          final int? energyKjPoints = energyKj == null
              ? null
              : productType == ProductType.beverage
                  ? calEnergyPointsForBeverages(energyKj)
                  : calEnergyPoints(energyKj);
          final int? saturatedFatGPoints = productType == ProductType.addedFat
              ? saturatedFatPer == null
                  ? null
                  : calSaturatedFatPointsForFat(saturatedFatPer)
              : saturatedFatG == null
                  ? null
                  : calSaturatedFatPoints(saturatedFatG);
          final int? sodiumMgPoints =
              sodiumMg == null ? null : calSodiumPoints(sodiumMg);
          final int? fruitesVegetablesGPoints = fruitesVegetablesG == null
              ? null
              : productType == ProductType.beverage
                  ? calFruiteVegePointsForBeverages(fruitesVegetablesG)
                  : calFruiteVegePonts(fruitesVegetablesG);
          final int? fiberGPoints =
              fiberG == null ? null : calFiberPoints(fiberG);
          final int? proteinsGPoints =
              protiensG == null ? null : calProtienPoints(protiensG);
          final int? saltPoints = saltG == null ? null : calSaltPoints(saltG);

          // log("Energy Value KCL: $energyKcal100g");
          // log("Energy Value kj to kcl: ${energyKcal100g * 4.184}");
          // log("Energy Value KJ: ${energyKj.toStringAsFixed(2)}");
          // log("Energy Points: $energyKjPoints");

          // log("SugarG: $sugarG");
          // log("Sugar Points: $sugarGPoints");

          final countNullValues = [
            sugarGPoints,
            energyKjPoints,
            saturatedFatGPoints,
            sodiumMgPoints,
            fruitesVegetablesGPoints,
            fiberGPoints,
            proteinsGPoints,
            saltPoints,
          ].where((element) => element == null).length;

          log("NULL Values Count: $countNullValues");
          int? pointC;
          if (countNullValues <= 1) {
            pointC = calFinalPointC(
              type: productType,
              sugarPoints: sugarGPoints ?? 0,
              energyPoints: energyKjPoints ?? 0,
              saturatedFatPoints: saturatedFatGPoints ?? 0,
              sodiumPoints: sodiumMgPoints ?? 0,
              fruitVegePoints: fruitesVegetablesGPoints ?? 0,
              fiberPoints: fiberGPoints ?? 0,
              proteinsPoints: proteinsGPoints ?? 0,
              tags: tags,
            );
          }

          final quality = pointC == null
              ? Quality.not_enough_data
              : getProductQuality(pointC);

          product = Product(
            barcode: barcode,
            productType: productType,

            /// Nutriments values per 100 g
            saltG: saltG ?? 0,
            saltPoints: saltPoints ?? 0,
            energyKj: energyKj ?? 0,
            protiensG: protiensG ?? 0,
            fiberG: fiberG ?? 0,
            fruitesVegetablesG: fruitesVegetablesG ?? 0,
            sodiumMg: sodiumMg ?? 0,
            saturatedFatG: saturatedFatG ?? 0,
            sugarG: sugarG ?? 0,
            fat: fat ?? 0,
            energyKcal: energyKcal100g ?? 0,

            /// Nutriments Points
            energyKjPoints: energyKjPoints ?? 0,
            sugarGPoints: sugarGPoints ?? 0,
            saturatedFatGPoints: saturatedFatGPoints ?? 0,
            sodiumMgPoints: sodiumMgPoints ?? 0,
            fiberGPoints: fiberGPoints ?? 0,
            fruiteVegeGPoints: fruitesVegetablesGPoints ?? 0,
            proteinsGPoints: proteinsGPoints ?? 0,
            name: jsonProduct["product_name"] ?? "Name Not Found",
            genericName: jsonProduct['generic_name'] ?? "not found",
            imageUrl: jsonProduct['image_url'] ?? noImageUrl,
            sodium: sodium100g ?? 0,
            pointsC: pointC ?? 0,
            quality: quality,
            additiveTags: dynamicToStringList(tags),
          );
        } catch (e) {
          log("Error (ApiController: getProduct()): $e");
          return null;
        }

        return product;
      }
    }
    return null;
  }

  int calFinalPointC({
    required ProductType type,
    required int energyPoints,
    required int sugarPoints,
    required int saturatedFatPoints,
    required int sodiumPoints,
    required int fruitVegePoints,
    required int fiberPoints,
    required int proteinsPoints,
    required tags,
  }) {
    /// if it is water we put directly a mark of 100/100
    if (type == ProductType.water) {
      return 100;
    }

    /// STEP: 4 (refference to document for clarification about steps)
    /// Alertation in Points A & B
    var p = calCpoints(
      energyPoints: energyPoints,
      sugarPoints: sugarPoints,
      saturatedFatPoints: saturatedFatPoints,
      sodiumPoints: sodiumPoints,
      fruitVegePoints: fruitVegePoints,
      fiberPoints: fiberPoints,
      proteinsPoints: proteinsPoints,
    );

    log("Point C (Step: 4): $p");

    /// STEP: 5
    /// Convert C points between -15 and 40 by a mark between 0 and 100.
    if (ProductType.beverage == type) {
      p = pointCConversionForBeverages(p);
    } else {
      p = pointCConversion(p);
    }

    log("Point C Converted (Step: 5): $p");

    /// STEP: 6
    /// calculate penalty points according to additives
    final penalty = getPenaltyPoints(tags);
    log("Penalty Points (Step: 6): $penalty");

    p += penalty;

    log("Point C after penalties (Step: 6): $p");

    return p < 0 ? 0 : p;
  }

  /// STEP: 4
  /// Alertation in Points A & B
  int calCpoints({
    required int energyPoints,
    required int sugarPoints,
    required int saturatedFatPoints,
    required int sodiumPoints,
    required int fruitVegePoints,
    required int fiberPoints,
    required int proteinsPoints,
  }) {
    var points = 0;
    final A = energyPoints + sugarPoints + saturatedFatPoints + sodiumPoints;
    final B = fruitVegePoints + fiberPoints + proteinsPoints;

    if (A >= 11 && fruitVegePoints < 5) {
      points = A - fruitVegePoints - fiberPoints;
    } else if (A >= 11 && fruitVegePoints > 5) {
      points = A - B;
    } else if (A < 11) {
      points = A - B;
    }
    print('points is');
    return points;
  }

  List<String> dynamicToStringList(List<dynamic> additiveTags) {
    try {
      return additiveTags.map<String>((e) {
        e = cast<String>(e);
        e = e.replaceAll("en:", "");

        return e;
      }).toList();
    } catch (e) {
      log("Error (ApiController: dynamicToStringList()): $e");
    }
    return [];
  }
}

class NoConnectionException implements Exception {
  String message;
  NoConnectionException(this.message);
}
