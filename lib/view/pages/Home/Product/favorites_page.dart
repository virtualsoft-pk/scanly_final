import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:scanly/models/product.dart';
import 'package:scanly/models/result.dart';
import 'package:scanly/services/isar_service.dart';
import 'package:scanly/utils/helper.dart';
import 'package:scanly/view/constants.dart';
import 'package:scanly/view/pages/Home/home_page.dart';
import 'package:scanly/view/widgets/product_tile.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);
  final isarService = IsarService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: buttonColor,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "favorites",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ).tr(),
          elevation: 1,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              StreamBuilder<List<Result>>(
                stream: isarService.listenToFavorites(),
                builder: ((context, snapshot) {
                  var resultList = snapshot.data;

                  if (snapshot.hasData && resultList!.isNotEmpty) {
                    return Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.only(top: 16, bottom: 120),
                          itemCount: resultList.length,
                          itemBuilder: (c, i) {
                            final result = resultList[i];

                            final product = Product(
                              productType: result.prodcutType,
                              barcode: result.barcode,
                              saltG: result.saltG,
                              saltPoints: result.saltPoints,
                              isFavorite: result.favorite,
                              energyKjPoints: result.energyKjPoints,
                              sugarGPoints: result.sugarGPoints,
                              saturatedFatGPoints: result.saturatedFatGPoints,
                              sodiumMgPoints: result.sodiumMgPoints,
                              fiberGPoints: result.fiberGPoints,
                              fruiteVegeGPoints: result.fruiteVegeGPoints,
                              proteinsGPoints: result.proteinsGPoints,
                              sugarG: result.sugarG,
                              saturatedFatG: result.saturatedFatG,
                              sodiumMg: result.sodiumMg,
                              fruitesVegetablesG: result.fruitesVegetablesG,
                              fiberG: result.fiberG,
                              protiensG: result.protiensG,
                              energyKj: result.energyKj,
                              fat: result.fat,
                              quality: getProductQuality(result.pointsC),
                              name: result.name,
                              genericName: result.genericName,
                              imageUrl: result.imgUrl,
                              pointsC: result.pointsC,
                              energyKcal: result.energyKcal,
                              sodium: result.sodium,
                              additiveTags: result.additiveTags,
                            );

                            return ProductTile(
                              product: product,
                              result: result,
                            );
                          }),
                    );
                  }
                  return Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 64, vertical: 12),
                          child: Center(
                              child: const Text(
                            "you_didnot_marked_fav",
                            textAlign: TextAlign.center,
                          ).tr()),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 64,
                          ),
                          child: Center(
                              child: const Text(
                            "you_can_mark_fav",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ).tr()),
                        ),
                        const SizedBox(height: 32),
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
                                child: const Text(
                              "go_to_history",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ).tr()),
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ));
  }
}
