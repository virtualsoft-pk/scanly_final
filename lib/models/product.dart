enum Quality {
  poor,
  average,
  good,
  excellent,
  not_enough_data,
}

enum ProductType {
  normal,
  beverage,
  addedFat,
  water,
  missing,
}

const String noImageUrl =
    "https://qa-cdn.samsung.com/etc/designs/smg/global/imgs/support-new/img-no-product.png";

class Product {
  final String imageUrl, name, barcode;
  final String? genericName;

  bool isFavorite;

  final num energyKcal,
      energyKj,
      sugarG,
      saturatedFatG,
      sodiumMg,
      fruitesVegetablesG,
      fiberG,
      saltG,
      protiensG,
      sodium,
      fat;

  final int pointsC,
      energyKjPoints,
      sugarGPoints,
      saturatedFatGPoints,
      sodiumMgPoints,
      fiberGPoints,
      fruiteVegeGPoints,
      saltPoints,
      proteinsGPoints;
  final List<String> additiveTags;
  final Quality quality;
  final ProductType productType;

  Product({
    required this.productType,
    required this.barcode,
    this.isFavorite = false,
    required this.saltG,
    required this.saltPoints,
    required this.energyKjPoints,
    required this.sugarGPoints,
    required this.saturatedFatGPoints,
    required this.sodiumMgPoints,
    required this.fiberGPoints,
    required this.fruiteVegeGPoints,
    required this.proteinsGPoints,
    required this.sugarG,
    required this.saturatedFatG,
    required this.sodiumMg,
    required this.fruitesVegetablesG,
    required this.fiberG,
    required this.protiensG,
    required this.energyKj,
    required this.fat,
    required this.quality,
    required this.name,
    required this.genericName,
    required this.imageUrl,
    required this.pointsC,
    required this.energyKcal,
    required this.sodium,
    required this.additiveTags,
  });
}
