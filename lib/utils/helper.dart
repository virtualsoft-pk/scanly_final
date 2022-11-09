import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:scanly/utils/values.dart';

import '../models/product.dart';

Color getQualityColor(Quality quality) {
  switch (quality) {
    case Quality.excellent:
      return const Color(0xFF00b050);
    case Quality.good:
      return const Color(0xFF92d050);
    case Quality.average:
      return const Color(0xFFFFC000);
    case Quality.poor:
      return const Color(0xFFFF0000);

    default:
      return Colors.black;
  }
}

/// STEP: 5
/// Convert C points between -15 and 40 by a mark between 0 and 100.
int pointCConversion(int points) {
  if (points < -1) return 100;
  if (points == -1) return 90;
  if (points == 0) return 80;
  if (points == 1) return 75;
  if (points == 2) return 70;
  if (points == 3) return 65;
  if (points == 4) return 60;
  if (points == 5) return 55;
  if (points == 6) return 50;
  if (points == 7) return 45;
  if (points == 8) return 40;
  if (points == 9) return 35;
  if (points == 10) return 30;
  if (points == 11) return 15;
  if (points == 12) return 13;
  if (points == 13) return 11;
  if (points == 14) return 9;
  if (points == 15) return 7;
  if (points == 16) return 5;
  if (points == 17) return 3;
  if (points == 18) return 1;
  return 0;
}

// type casting
T? cast<T>(x) => x is T ? x : null;

/// STEP: 6
/// calculate penalty points
int getPenaltyPoints(List<dynamic> additiveTags) {
  int penalty = 0;
  try {
    additiveTags = additiveTags.map<String>((e) {
      e = cast<String>(e);
      e = e.replaceAll("en:", "");

      penalty += getPenalty(e);

      return e;
    }).toList();
    log("Additive Tags: $additiveTags, type: ${additiveTags.runtimeType}");
  } catch (e) {
    log("Error in getPenaltyPoints method: $e");
  }

  return penalty;
}

int getPenalty(String tag) {
  try {
    return additivesData[tag]!['penalty'] as int;
  } catch (e) {
    log("Error in getPenaltyPoint (helper.dart): $e");
  }
  return 0;
}

getPenaltyPointLabelNColor(String tag) {
  const colors = [
    Color(0xFF00b050),
    Color(0xFF92d050),
    Color(0xFFFFC000),
    Color(0xFFFF0000),
  ];
  final penalty = getPenalty(tag);
  if (penalty == 0 || penalty == -3) return ["without_risk", colors[0]];
  if (penalty == -15) return ["small_risk", colors[1]];
  if (penalty == -20 || penalty == 30) return ["moderate_risk", colors[2]];
  if (penalty == -45) return ["high_risk", colors[3]];
  return ["wihout_risk", colors[0]];
}

int calProtienPoints(num protien) {
  if (protien < 1.6) {
    return 0;
  } else if (protien < 3.2) {
    return 1;
  } else if (protien < 4.8) {
    return 2;
  } else if (protien < 6.4) {
    return 3;
  } else if (protien < 8) {
    return 4;
  } else {
    return 5;
  }
}

int calFiberPoints(num fiber) {
  if (fiber < 0.7) {
    return 0;
  } else if (fiber < 1.4) {
    return 1;
  } else if (fiber < 2.1) {
    return 2;
  } else if (fiber < 2.8) {
    return 3;
  } else if (fiber < 3.5) {
    return 4;
  } else {
    return 5;
  }
}

int calFruiteVegePonts(num fruiteVege) {
  if (fruiteVege < 40) {
    return 0;
  } else if (fruiteVege < 60) {
    return 1;
  } else if (fruiteVege < 80) {
    return 2;
  } else {
    return 5;
  }
}

int calSodiumPoints(num sodium) {
  return sodium ~/ 90;
}

int calSaltPoints(num salt) {
  return salt ~/ 90;
}

int calSaturatedFatPoints(num fat) {
  if (fat < 1) {
    return 0;
  } else if (fat < 2) {
    return 1;
  } else if (fat < 3) {
    return 2;
  } else if (fat < 4) {
    return 3;
  } else if (fat < 5) {
    return 4;
  } else if (fat < 6) {
    return 5;
  } else if (fat < 7) {
    return 6;
  } else if (fat < 8) {
    return 7;
  } else if (fat < 9) {
    return 8;
  } else if (fat < 10) {
    return 9;
  } else {
    return 10;
  }
}

int calSugarPoints(num sugar) {
  if (sugar < 4.5) {
    return 0;
  } else if (sugar < 9) {
    return 1;
  } else if (sugar < 13.5) {
    return 2;
  } else if (sugar < 18) {
    return 3;
  } else if (sugar < 22.5) {
    return 4;
  } else if (sugar < 27) {
    return 5;
  } else if (sugar < 31) {
    return 6;
  } else if (sugar < 36) {
    return 7;
  } else if (sugar < 40) {
    return 8;
  } else if (sugar < 45) {
    return 9;
  } else {
    return 10;
  }
}

int calEnergyPoints(num energy) {
  if (energy < 335) {
    return 0;
  } else if (energy < 670) {
    return 1;
  } else if (energy < 1005) {
    return 2;
  } else if (energy < 1340) {
    return 3;
  } else if (energy < 1675) {
    return 4;
  } else if (energy < 2010) {
    return 5;
  } else if (energy < 2345) {
    return 6;
  } else if (energy < 2680) {
    return 7;
  } else if (energy < 3015) {
    return 8;
  } else if (energy < 3350) {
    return 9;
  } else {
    return 10;
  }
}

ProductType getProductType(String categories) {
  try {
    if (categories == "") return ProductType.missing;
    log("categories : $categories");
    categories =
        categories.toLowerCase().replaceAll(" ", "").replaceAll(",", "");
    RegExp waterExp = RegExp(r"^(.*)(water)(.*)$");
    RegExp beverageExp = RegExp(r"^(.*)(boissons|drink|beverage|soda)(.*)$");
    RegExp nonBeverage = RegExp(r"^(.*)(plant-based|food)(.*)$");
    RegExp nonBeverageTwo = RegExp(r"^(.*)(aliments)(.*)$");
    RegExp fatExp =
        RegExp(r"^(.*)(fat|oil|cheeses|fromages|pétrole|graisse)(.*)$");

    if (waterExp.hasMatch(categories)) {
      return ProductType.water;
    } else if (nonBeverage.hasMatch(categories) ||
        nonBeverageTwo.hasMatch(categories)) {
      if (fatExp.hasMatch(categories)) {
        return ProductType.addedFat;
      } else {
        return ProductType.normal;
      }
    } else if (beverageExp.hasMatch(categories)) {
      return ProductType.beverage;
    } else if (fatExp.hasMatch(categories)) {
      return ProductType.addedFat;
    } else {
      return ProductType.normal;
    }
  } catch (e) {
    log("Error in getProductType method in helper.dart: $e");
  }
  return ProductType.missing;
}

Quality getProductQuality(int points) {
  if (points < 20) return Quality.poor;
  if (points < 40) return Quality.average;
  if (points < 80) return Quality.good;
  return Quality.excellent;
}

Quality getNegNutrimentQuality(int points) {
  if (points < 2) return Quality.excellent;
  if (points < 4) return Quality.good;
  if (points < 7) return Quality.average;
  return Quality.poor;
}

Quality getSaltNutrimentQuality(int points) {
  if (points < 180) return Quality.excellent;
  if (points < 360) return Quality.good;
  if (points < 630) return Quality.average;
  return Quality.poor;
}

Quality getNormalSugarNutrimentQuality(int points) {
  print('normal sugar points is $points');
  if (points < 1.5) return Quality.excellent;
  if (points < 4.5) return Quality.good;
  if (points < 9) return Quality.average;
  return Quality.poor;
}

Quality getNproductsEnergyNutrimentQuality(int points) {
  if (points < 670) return Quality.excellent;
  if (points < 1340) return Quality.good;
  if (points < 2345) return Quality.average;
  return Quality.poor;
}

Quality getBevSugarNegNutrimentQuality(int points) {
  print('bev sugar is $points');
  if (points < 9) return Quality.excellent;
  if (points < 18) return Quality.good;
  if (points < 31) return Quality.average;
  return Quality.poor;
}

Quality getNegNutrimentBevQuality(int points) {
  if (points < 30) return Quality.excellent;
  if (points < 90) return Quality.good;
  if (points < 180) return Quality.average;
  return Quality.poor;
}

Quality getPosNutrimentQuality(int points) {
  if (points <= 0) return Quality.poor;
  if (points == 1) return Quality.average;
  if (points < 4) return Quality.good;
  return Quality.excellent;
}

Quality getProtienNutrimentQuality(int points) {
  if (points < 1.6) return Quality.excellent;
  if (points < 3.2) return Quality.good;
  if (points < 6.4) return Quality.average;
  return Quality.poor;
}

String getAmountLabelForNegNutriment(int points) {
  if (points < 2) return "low_amount";
  if (points < 4) return "moderate_amount";
  return "high_amount";
}

String getAmountLabelForPosNutriment(int points) {
  if (points == 0) return "low_amount";
  if (points == 1) return "moderate_amount";
  return "high_amount";
}

/// Description labels
String energyDes(int points) {
  print('energy points is $points');
  if (points < 670) return "very_low_impact";
  if (points < 1340) return "low_impact";
  if (points < 2345) return "bit_much_high_in_cal";
  return "too_high_in_cal";
}

String energyForBevDes(int points) {
  print('energy points is $points');
  if (points < 30) return "very_low_impact";
  if (points < 90) return "low_impact";
  if (points < 180) return "bit_much_high_in_cal";
  return "too_high_in_cal";
}

String sugarDes(int points) {
  print('sugar des is $points');
  if (points < 1.5) return "very_little_sugar";
  if (points < 4.5) return "little_sugar";
  if (points < 9) return "bit_much_sugar";
  return "too_much_sugar";
}

String sugarBevDes(int points) {
  print('sugar des is $points');
  if (points < 9) return "very_little_sugar";
  if (points < 18) return "little_sugar";
  if (points < 31) return "bit_much_sugar";
  return "too_much_sugar";
}

String saturatedFatDes(int points) {
  print('saturated fats is $points');
  if (points < 2) return "very_low_fat";
  if (points < 4) return "low_fat";
  if (points < 7) return "bit_much_fat";
  return "too_much_fat";
}

String sodiumDes(int points) {
  double getPoints = points * 1000 / 2.5;

  // if (points < 2) return "very_little_salt";
  // if (points < 4) return "little_salt";
  // if (points < 7) return "bit_much_salt";
  print('sodium points is $getPoints');

  if (getPoints < 180) return "very_little_salt";
  if (getPoints < 360) return "little_salt";
  if (getPoints < 630) return "bit_much_salt";

  return "too_much_salt";
}

String fruiteVegeDes(int points) {
  if (points == 0) return "very_few_fruit_vege";
  if (points == 1) return "few_fruit_vege";
  if (points == 2) return "good_quantity_fruit_vege";
  return "excellent_fruit_vege";
}

String fiberDes(int points) {
  print('fiber points is $points');
  if (points == 0) return "very_little_fiber";
  if (points == 1) return "little_fiber";
  if (points < 4) return "good_amount_fiber";
  return "excellent_amount_fiber";
}

String proteinsDes(int points) {
  print('protien value is $points');
  if (points < 1.6) return "very_little_protein";
  if (points < 3.2) return "little_protein";
  if (points < 6.4) return "good_amount_protein";

  return "excellent_amount_protein";
  // if (points == 0) return "very_little_protein";
  // if (points == 1) return "little_protein";
  // if (points < 4) return "good_amount_protein";
  // return "excellent_amount_protein";
}

/// Specific for BEVERAGES Products

int calSugarPointsForBeverages(num sugar) {
  if (sugar <= 0) {
    return 0;
  } else if (sugar < 1.5) {
    return 1;
  } else if (sugar < 3) {
    return 2;
  } else if (sugar < 4.5) {
    return 3;
  } else if (sugar < 6) {
    return 4;
  } else if (sugar < 7.5) {
    return 5;
  } else if (sugar < 9) {
    return 6;
  } else if (sugar < 10.5) {
    return 7;
  } else if (sugar < 12) {
    return 8;
  } else if (sugar < 13.5) {
    return 9;
  } else {
    return 10;
  }
}

int calEnergyPointsForBeverages(num energy) {
  if (energy == 0) {
    return 0;
  } else if (energy < 30) {
    return 1;
  } else if (energy < 60) {
    return 2;
  } else if (energy < 90) {
    return 3;
  } else if (energy < 120) {
    return 4;
  } else if (energy < 150) {
    return 5;
  } else if (energy < 180) {
    return 6;
  } else if (energy < 210) {
    return 7;
  } else if (energy < 240) {
    return 8;
  } else if (energy < 270) {
    return 9;
  } else {
    return 10;
  }
}

int calFruiteVegePointsForBeverages(num fruiteVege) {
  if (fruiteVege < 40) {
    return 0;
  } else if (fruiteVege < 60) {
    return 2;
  } else if (fruiteVege < 80) {
    return 4;
  } else {
    return 10;
  }
}

String fruiteVegeBeverageDes(int points) {
  if (points == 0) return "very_few_fruit_vege";
  if (points < 3) return "few_fruit_vege";
  if (points < 10) return "good_quantity_fruit_vege";
  return "excellent_fruit_vege";
}

/// STEP: 5
/// Convert C points between -15 and 40 by a mark between 0 and 100.
int pointCConversionForBeverages(int points) {
  if (points < -3) return 80;
  if (points == -3) return 77;
  if (points == -2) return 74;
  if (points == -1) return 71;
  if (points == 0) return 68;
  if (points == 1) return 65;
  if (points == 2) return 57;
  if (points == 3) return 49;
  if (points == 4) return 41;
  if (points == 5) return 33;
  if (points == 6) return 15;
  if (points == 7) return 11;
  if (points == 8) return 7;
  if (points == 9) return 3;

  return 0;
}

/// Specific for Added Fats Products

int calSaturatedFatPointsForFat(num fat) {
  if (fat < 10) {
    return 0;
  } else if (fat < 16) {
    return 1;
  } else if (fat < 21) {
    return 2;
  } else if (fat < 28) {
    return 3;
  } else if (fat < 34) {
    return 4;
  } else if (fat < 40) {
    return 5;
  } else if (fat < 46) {
    return 6;
  } else if (fat < 52) {
    return 7;
  } else if (fat < 58) {
    return 8;
  } else if (fat < 64) {
    return 9;
  } else {
    return 10;
  }
}
