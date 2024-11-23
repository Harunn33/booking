import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/extensions/border_radius_ext.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';
import 'package:piton_test_case/core/extensions/string_ext.dart';
import 'package:piton_test_case/core/widgets/cached_network_image/custom_cached_network_image.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors.instance;
    return Container(
      padding: 5.padLeft,
      width: 240.w,
      decoration: BoxDecoration(
        color: AppColors.instance.maWhite,
        borderRadius: 4.radiusAll,
      ),
      child: Row(
        children: [
          CustomCachedNetworkImage(
            imageUrl: product.cover,
          ),
          Expanded(
            child: Padding(
              padding: 5.padHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name.capitalize(),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: AppColors.instance.cosmicVoid,
                            ),
                      ),
                      8.verticalSpace,
                      Text(
                        product.author,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: appColors.cosmicVoid.withOpacity(.6),
                                ),
                      ),
                    ],
                  ),
                  Text(
                    '${product.price} \$',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
