import 'package:isar/isar.dart';
import 'package:scanly/models/product.dart';

part 'result.g.dart';

@Collection()
class Result {
  late Id id;
  late int total;
  late int mark;
  late String imgUrl, name, genericName, barcode;
  bool favorite = false;

  @ProductTypeConverter()
  late ProductType prodcutType;

  late double energyKcal,
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

  late int pointsC,
      energyKjPoints,
      sugarGPoints,
      saturatedFatGPoints,
      sodiumMgPoints,
      fiberGPoints,
      fruiteVegeGPoints,
      saltPoints,
      proteinsGPoints;

  late List<String> additiveTags;
}

class ProductTypeConverter extends TypeConverter<ProductType, int> {
  const ProductTypeConverter();

  @override
  ProductType fromIsar(int object) {
    return ProductType.values[object];
  }

  @override
  int toIsar(ProductType object) {
    return object.index;
  }
}
