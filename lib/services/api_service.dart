import 'package:get/get.dart';

class ProductProvier extends GetConnect {
  Future<Response> getProduct(String barcode) =>
      get("https://world.openfoodfacts.org/api/v0/product/$barcode");
}
