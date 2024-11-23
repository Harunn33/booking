import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/extensions/border_radius_ext.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';
import 'package:piton_test_case/core/extensions/string_ext.dart';
import 'package:piton_test_case/core/routing/app_router.dart';
import 'package:piton_test_case/core/widgets/cached_network_image/custom_cached_network_image.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';

class CustomVerticalProductCard extends StatelessWidget {
  const CustomVerticalProductCard({
    required this.product,
    super.key,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors.instance;
    final appPaddings = AppPaddings.instance;
    return InkWell(
      onTap: () => navigateToDetail(
        context,
        product: product,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: appColors.maWhite,
          borderRadius: 4.radiusAll,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomCachedNetworkImage(
                imageUrl: product.cover,
                width: 150,
                height: 225,
              ),
            ),
            Padding(
              padding: appPaddings.horizontal + 10.padBottom,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name.capitalize(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: appColors.cosmicVoid,
                        ),
                  ),
                  4.verticalSpace,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          product.author,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 8.sp,
                                color: appColors.cosmicVoid.withOpacity(.6),
                              ),
                        ),
                      ),
                      Text(
                        '${product.price} \$',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToDetail(
    BuildContext context, {
    required Product product,
  }) {
    context.router.push(
      ProductDetailRoute(
        product: product,
      ),
    );
  }
}
