import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:scanly/controllers/scan_controller.dart';
import 'package:scanly/models/product.dart';
import 'package:scanly/models/result.dart';
import 'package:scanly/services/isar_service.dart';
import 'package:scanly/utils/helper.dart';
import 'package:scanly/utils/values.dart';
import 'package:scanly/view/constants.dart';
import 'package:scanly/view/pages/Home/Scan/scan_page.dart';
import 'package:scanly/view/pages/Home/home_page.dart';

import '../../../../controllers/api_controller.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    Key? key,
    required this.result,
  }) : super(key: key);
  final Result result;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

TextStyle tableHeaderStyle =
    const TextStyle(fontSize: 11, fontWeight: FontWeight.w600);

TextStyle tableCellStyle = const TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w500,
);

class _ResultPageState extends State<ResultPage> {
  // bool expanded = false;
  var scanController = Get.put(ScanController());
  late final ApiController apiController;
  final isarService = IsarService();
  late Result result;
  late final Quality quality;

  @override
  void initState() {
    result = widget.result;

    quality =
        getProductQuality(scanController.qualityForNormalProducts(result));
    scanController.qualityForNormalProducts(result);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('result isn ${widget.result.energyKjPoints}');
    print('product type is ${widget.result.prodcutType}');
    print('sugar point is ${result.sugarGPoints}');

    print('product result is ${widget.result.fruiteVegeGPoints} ');
    print('energy ${result.energyKcal}');
    log("total points ${widget.result.energyKjPoints + widget.result.saltPoints + widget.result.energyKjPoints + widget.result.sugarGPoints}");
    result.total = widget.result.proteinsGPoints +
        widget.result.saltPoints +
        widget.result.energyKjPoints +
        widget.result.sugarGPoints;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: buttonColor,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            "result".tr(),
            style: const TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.offAll(() => const HomePage());
              },
              child: SizedBox(
                height: 28,
                width: 28,
                child: SvgPicture.asset(
                  'assets/svgs/home.svg',
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 28,
            ),
            GestureDetector(
                onTap: () {
                  Get.off(() => const ScanPage());
                },
                child: SizedBox(
                  height: 28,
                  width: 28,
                  child: SvgPicture.asset(
                    'assets/svgs/qr.svg',
                    color: Colors.white,
                  ),
                )),
            const SizedBox(
              width: 32,
            ),
          ],
          elevation: 1,
        ),
        body: SizedBox.expand(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: result.imgUrl,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),

                      // Image.asset(
                      //   "assets/images/juice.png",
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width * 0.4,
                        child: Text(
                          result.name,
                          // result.type
                          //     .toString()
                          //     .split(".")[1]
                          //     .toString()
                          //     .capitalizeF(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      // if (result.genericName != null &&
                      //     result.genericName != "")
                      SizedBox(
                          width: Get.width * 0.4,
                          child: Text(
                            "Product Type: ${widget.result.prodcutType.toString().split(".").last.capitalizeFirst}",

                            ///result.genericName!,
                            // "Product Type: ${quality.toString().split(".")[1].tr()}",
                            style: const TextStyle(
                                color: Color(0xFFBBBBBB),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          )),
                      // if (!expanded) const SizedBox(height: 4),

                      Row(
                        children: [
                          if (quality != Quality.not_enough_data)
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: getQualityColor(quality),
                            ),
                          if (quality != Quality.not_enough_data)
                            const SizedBox(width: 4),
                          SizedBox(
                            width: quality != Quality.not_enough_data
                                ? Get.width * 0.2
                                : Get.width * 0.44,
                            child: Text(
                              quality.toString().split(".")[1].toString().tr(),
                              style: TextStyle(
                                color: headingColor,
                                fontSize: quality == Quality.not_enough_data
                                    ? 12
                                    : 14,
                                fontWeight: quality == Quality.not_enough_data
                                    ? FontWeight.w500
                                    : FontWeight.w600,
                              ),
                            ).tr(),
                          ),
                          if (quality != Quality.not_enough_data)
                            const SizedBox(width: 8),
                          if (quality != Quality.not_enough_data)
                            Text(
                              "${result.mark}/100",
                              style: TextStyle(
                                color: getQualityColor(quality),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    if (result.energyKcal != 0.0 ||
                        result.saturatedFatG != 0.0 ||
                        result.sugarG != 0.0 ||
                        result.saltG != 0.0)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Defaults",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                                result.prodcutType == ProductType.beverage
                                    ? 'per 100ml'
                                    : 'per 100g',
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    const SizedBox(height: 4),
                    if (result.energyKcal != 0.0)
                      InfoTile(
                        //
                        title: "energy",
                        description: result.prodcutType == ProductType.beverage
                            ? energyForBevDes(result.energyKjPoints)
                            : energyDes(result.energyKjPoints),
                        quantity: result.energyKcal.toDouble(),
                        unit: "kcal",
                        quality: result.prodcutType == ProductType.beverage
                            ? getNegNutrimentBevQuality(result.energyKjPoints)
                            : getNproductsEnergyNutrimentQuality(result
                                .energyKjPoints), //getNegNutrimentQuality(result.energyKjPoints),
                        breakpoints: result.prodcutType == ProductType.beverage
                            ? energyKcalQualityBreakpointsForBeverage
                            : energyKjQualityBreakpoints,
                        iconPath: "assets/icons/calories.png",
                        // icon: FontAwesomeIcons.fire,
                      ),
                    if (result.saturatedFatG != 0.0)
                      InfoTile(
                        title: "saturated_fat",
                        description:
                            saturatedFatDes(result.saturatedFatGPoints),
                        breakpoints: saturatedFatGQualityBreakpoints,
                        quantity: result.saturatedFatG.toDouble(),

                        unit: result.prodcutType == ProductType.addedFat
                            ? "%"
                            : "g",

                        quality:
                            getNegNutrimentQuality(result.saturatedFatGPoints),
                        iconPath: "assets/icons/trans-fat.png",

                        //icon: FontAwesomeIcons.droplet,
                      ),

                    if (result.sugarG != 0.0)
                      InfoTile(
                        title: "sugar",
                        description: result.prodcutType == ProductType.beverage
                            ? sugarBevDes(result.sugarGPoints)
                            : sugarDes(result.sugarGPoints),
                        breakpoints: result.prodcutType == ProductType.beverage
                            ? sugarGQualityBreakpointsForBeverage
                            : sugarGQualityBreakpoints,
                        quantity: result.sugarG.toDouble(),
                        unit: "g",
                        quality: result.prodcutType == ProductType.beverage
                            ? getBevSugarNegNutrimentQuality(
                                result.sugarGPoints)
                            : getNormalSugarNutrimentQuality(
                                result.sugarGPoints),
                        iconPath: "assets/icons/sugar-cube.png",

                        // icon: FontAwesomeIcons.cookie
                      ),
                    if (result.saltG != 0.0)
                      InfoTile(
                        title: "salt", //result.sodiumMgPoints
                        description: sodiumDes(result.sodiumMgPoints),
                        breakpoints: sodiumMgQualityBreakpoints,
                        quantity: result.saltG.toDouble(),
                        unit: "g",
                        quality: getSaltNutrimentQuality(result.sodiumMgPoints),
                        iconPath: "assets/icons/salt.png",

                        //  icon: FontAwesomeIcons.dollarSign,
                      ),
                    const SizedBox(height: 8),

                    if (result.fruitesVegetablesG != 0.0 ||
                        result.fiberG != 0.0 ||
                        result.protiensG != 0.0)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Qualities",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                                result.prodcutType == ProductType.beverage
                                    ? 'per 100ml'
                                    : 'per 100g',
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    const SizedBox(height: 4),

                    if (result.fruitesVegetablesG != 0.0)
                      InfoTile(
                        positiveNutriment: true,
                        title: "fruite_vegetables",
                        description: fruiteVegeDes(result.fruiteVegeGPoints),
                        breakpoints: result.prodcutType == ProductType.beverage
                            ? fruiteVegeQualityBreakpointsForBeverage
                            : fruiteVegeQualityBreakpoints,
                        quantity: result.fruitesVegetablesG.toDouble(),
                        unit: "g",
                        quality:
                            getPosNutrimentQuality(result.fruiteVegeGPoints),
                        iconPath: "assets/icons/fruit.png",

                        // icon: FontAwesomeIcons.leaf,
                      ),
                    if (result.fiberG != 0.0)
                      InfoTile(
                        positiveNutriment: true,
                        title: "fiber",
                        description: fiberDes(result.fiberGPoints),
                        breakpoints: fiberQualityBreakpoints,
                        quantity: result.fiberG.toDouble(),
                        unit: "g",
                        quality: getPosNutrimentQuality(result.fiberGPoints),
                        iconPath: "assets/icons/wheat.png",

                        //  icon: FontAwesomeIcons.bolt,
                      ),
                    if (result.protiensG != 0.0)
                      InfoTile(
                        positiveNutriment: true,
                        title: "proteins",
                        description: proteinsDes(result.proteinsGPoints),
                        breakpoints: prteinsQualityBreakpoints,
                        quantity: result.protiensG.toDouble(),
                        unit: "g",
                        quality:
                            getProtienNutrimentQuality(result.proteinsGPoints),
                        iconPath: "assets/icons/protein.png",

                        //icon: FontAwesomeIcons.egg,
                      ),
                    if (result.additiveTags.isNotEmpty)
                      AdditiveTile(
                        title: "additives",
                        additives: result.additiveTags,
                        icon: Icons.add,
                      ),
                    // InfoTile(
                    //     title: "calories",
                    //     subtitle: "faible impact",
                    //     data: "${result.energyKcal.toStringAsFixed(2)} kcal",
                    //
                    //     points: result.energyKjPoints,
                    //     icon: Icons.local_cafe),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "options",
                          style: TextStyle(
                            color: headingColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ).tr(),
                      ),
                    ),
                    const SizedBox(height: 8),
                    OptionTile(
                        title: "scoring_method",
                        icon: Icons.star_half,
                        onTap: () {}),
                    OptionTile(
                        title: "report_a_problem",
                        icon: Icons.file_copy_outlined,
                        onTap: () {}),
                    OptionTile(
                        title: widget.result.favorite
                            ? "Favourite"
                            : "add_product_as_favorite",
                        icon: widget.result.favorite
                            ? Icons.favorite
                            : Icons.favorite_outlined,
                        onTap: () {
                          isarService
                              .favoriteToggle(widget.result)
                              .then((value) {
                            log("favorite toggle: $value");
                            setState(() {
                              result = value;
                            });
                          });
                        }),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}

class AdditiveTile extends StatefulWidget {
  const AdditiveTile({
    Key? key,
    required this.title,
    required this.additives,
    required this.icon,
  }) : super(key: key);

  final String title;
  final List<String> additives;
  final IconData icon;

  @override
  State<AdditiveTile> createState() => _AdditiveTileState();
}

class _AdditiveTileState extends State<AdditiveTile> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          expanded = !expanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 6,
                blurRadius: 12,
              )
            ]),
        child: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Icon(widget.icon),
              const SizedBox(width: 16),
              Text(
                widget.title.tr(),
                style: const TextStyle(
                  color: headingColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                "${widget.additives.length} ${"additives".tr()}",
                style: const TextStyle(
                  color: Color(0xFFBBBBBB),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // const SizedBox(width: 4),
              // CircleAvatar(
              //   radius: 6,
              //   backgroundColor: getQualityColor(widget.quality),
              // ),
              const SizedBox(width: 6),
              AnimatedRotation(
                  duration: const Duration(milliseconds: 300),
                  turns: expanded ? 0.5 : 1,
                  child: const Icon(Icons.keyboard_arrow_up)),
            ]),
            if (expanded)
              Column(
                children: widget.additives.map((additive) {
                  final additiveInfo = getPenaltyPointLabelNColor(additive);
                  final String label = additiveInfo[0];
                  final Color color = additiveInfo[1];

                  return Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Divider(
                          color: Colors.grey[300],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    additive.toUpperCase(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                      width: Get.width * 0.3,
                                      child: Text(
                                        additivesData[additive]!["name"]
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[400]),
                                      )),
                                ],
                              ),
                              const Spacer(),
                              Text(
                                label.tr(),
                                style: const TextStyle(
                                  color: Color(0xFFBBBBBB),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 6),
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: color,
                              ),
                              const SizedBox(width: 6),
                            ]),
                      ],
                    ),
                  );
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }
}

class InfoTile extends StatefulWidget {
  const InfoTile({
    Key? key,
    required this.title,
    required this.description,
    required this.quantity,
    required this.unit,
    required this.iconPath,
    required this.quality,
    required this.breakpoints,
    this.positiveNutriment = false,
  }) : super(key: key);

  final String title, description, unit, iconPath;
  final double quantity;
  final Quality quality;
  final List<double> breakpoints;
  final bool positiveNutriment;

  @override
  State<InfoTile> createState() => _InfoTileState();
}

class _InfoTileState extends State<InfoTile> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          expanded = !expanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 6,
                blurRadius: 12,
              )
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                // Icon(widget.icon),
                SizedBox(
                  height: 24,
                  child: Image.asset(
                    widget.iconPath,
                  ),
                ),
                //  const SizedBox(width:8 ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.title.tr(),
                      style: const TextStyle(
                        color: headingColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.41,
                      child: Text(
                        widget.description.tr(),
                        maxLines: 2,
                        style: const TextStyle(
                          color: Color(0xFFBBBBBB),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "${widget.quantity.toStringAsFixed(2)} ${widget.unit}",
                  style: const TextStyle(
                    color: Color(0xFFBBBBBB),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 4),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: getQualityColor(widget.quality),
                ),
                const SizedBox(width: 6),
                AnimatedRotation(
                    duration: const Duration(milliseconds: 300),
                    turns: expanded ? 0.5 : 1,
                    child: const Icon(Icons.keyboard_arrow_up)),
              ]),
            ),
            if (expanded)
              QualityBar(
                color: getQualityColor(widget.quality),
                value: widget.quantity,
                breakpoints: widget.breakpoints,
                positiveNutriment: widget.positiveNutriment,
              ),
          ],
        ),
      ),
    );
  }
}

class QualityBar extends StatelessWidget {
  const QualityBar(
      {super.key,
      required this.value,
      required this.breakpoints,
      required this.color,
      required this.positiveNutriment});

  final List<double> breakpoints;
  final double value;
  final bool positiveNutriment;
  final Color color;
  final _colors = const [
    Color(0xFF00b050),
    Color(0xFF92d050),
    Color(0xFFFFC000),
    Color(0xFFFF0000),
  ];

  List<double> calculateBreakpointsPercentage(List<double> breakpoints) {
    final List<double> breakpointsPercentage = [];
    for (var i = 1; i < 5; i++) {
      breakpointsPercentage
          .add((breakpoints[i] - breakpoints[i - 1]) / breakpoints.last);
    }
    return breakpointsPercentage;
  }

  @override
  Widget build(BuildContext context) {
    double per = value / breakpoints.last;
    print('value is $value');
    print('value is ${breakpoints.last}');
    print('per is $per');
    per = per > 1 ? 0.98 : per;
    final breakPointPercentages = calculateBreakpointsPercentage(breakpoints);
    final colors = positiveNutriment ? _colors.reversed.toList() : _colors;
    log("Percent: $per");
    log("Breakpoint Percentages: $breakPointPercentages");

    return Column(
      children: [
        //  const SizedBox(height: 8),
        Padding(
          padding: Get.locale == const Locale('ar')
              ? const EdgeInsets.only(right: 4)
              : const EdgeInsets.only(left: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: Get.locale == const Locale('ar')
                    ? EdgeInsets.only(right: per * (Get.width * 0.82))
                    : EdgeInsets.only(left: per * (Get.width * 0.82)),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: color,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            for (var i = 0; i < 4; i++)
              _Con(
                color: colors[i],
                percentage: breakPointPercentages[i],
              )
          ]),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const _Tex(
              n: '0',
              percentage: null,
            ),
            for (var i = 0; i < 4; i++)
              _Tex(
                n: breakpoints[i + 1].toString(),
                percentage: breakPointPercentages[i],
              ),
          ]),
        ),
      ],
    );
  }
}

class _Tex extends StatelessWidget {
  const _Tex({
    Key? key,
    required this.n,
    required this.percentage,
  }) : super(key: key);
  final String n;
  final double? percentage;

  @override
  Widget build(BuildContext context) {
    final double width =
        percentage != null ? ((Get.width * 0.8) * percentage!) : 12;
    return SizedBox(
      width: width,
      child: Align(
        alignment: Get.locale == const Locale('ar')
            ? Alignment.centerLeft
            : Alignment.centerRight,
        child: Text(
          n,
          style: const TextStyle(
              color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class _Con extends StatelessWidget {
  const _Con({Key? key, required this.color, required this.percentage})
      : super(key: key);
  final Color color;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    final width = (Get.width * 0.8) * percentage;
    return Container(
      height: 6,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  const OptionTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 68,
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 6,
                blurRadius: 12,
              )
            ]),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            title.tr(),
            style: const TextStyle(
              color: headingColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Icon(icon),
        ]),
      ),
    );
  }
}
