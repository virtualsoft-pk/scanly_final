import 'package:isar/isar.dart';
import 'package:scanly/models/product.dart';

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

class QualityConverter extends TypeConverter<Quality, int> {
  const QualityConverter();

  @override
  Quality fromIsar(int object) {
    return Quality.values[object];
  }

  @override
  int toIsar(Quality object) {
    return object.index;
  }
}
