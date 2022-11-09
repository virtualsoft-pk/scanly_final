import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart' hide Trans;
import 'package:scanly/models/product.dart';
import 'package:scanly/models/result.dart';
import 'package:scanly/services/isar_service.dart';
import 'package:scanly/utils/helper.dart';
import 'package:scanly/view/constants.dart';
import 'package:scanly/view/pages/Home/Scan/result_page.dart';

class ProductTile extends StatelessWidget {
  ProductTile({
    Key? key,
    required this.product,
    required this.result,
  }) : super(key: key);

  final Product product;
  final Result result;
  final isarService = IsarService();

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: (c) {
              isarService.deleteResult(result.id);
            },
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'delete'.tr(),
          ),
        ],
      ),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (c) {
              isarService.favoriteToggle(result);
            },
            backgroundColor: buttonColor,
            foregroundColor: Colors.white,
            icon:
                result.favorite ? FontAwesomeIcons.heartCrack : Icons.favorite,
            label: result.favorite ? 'unfavourite'.tr() : 'favourite'.tr(),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Get.to(() => ResultPage(
                result: result,
              ));
        },
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
            Container(
              height: 42,
              width: 42,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CachedNetworkImage(
                imageUrl: product.imageUrl,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.width * 0.4,
                  child: Text(
                    product.name,
                    maxLines: 2,
                    style: const TextStyle(
                      color: headingColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.5,
                  child: Text(
                    product.genericName ?? "",
                    maxLines: 1,
                    style: const TextStyle(
                      color: Color(0xFFBBBBBB),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              radius: 4,
              backgroundColor: getQualityColor(product.quality),
            ),
            const SizedBox(width: 4),
            Text(
              product.quality.toString().split(".")[1],
              style: const TextStyle(
                color: headingColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ).tr(),
          ]),
        ),
      ),
    );
  }
}
