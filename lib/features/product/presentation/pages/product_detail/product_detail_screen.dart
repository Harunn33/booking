import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_text_style.dart';
import 'package:piton_test_case/core/enums/app_icons.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';
import 'package:piton_test_case/core/widgets/app_bar/general_app_bar.dart';
import 'package:piton_test_case/core/widgets/cached_network_image/custom_cached_network_image.dart';
import 'package:piton_test_case/core/widgets/sliver_persistent_header/custom_sliver_persistent_header_delegate.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:piton_test_case/features/product/presentation/pages/product_detail/mixin/product_detail_mixin.dart';
import 'package:piton_test_case/features/product/presentation/providers/product_detail_notifier.dart';

part './widgets/custom_buy_now_button.dart';

@RoutePage()
class ProductDetailScreen extends ConsumerStatefulWidget {
  const ProductDetailScreen({
    required this.product,
    super.key,
  });
  final Product product;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen>
    with ProductDetailMixin {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(productDetailProvider.notifier);
    final state = ref.watch(productDetailProvider);
    return Scaffold(
      appBar: GeneralAppBar(
        pageTitle: context.l10n.bookDetails,
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                floating: true,
                delegate: CustomSliverPersistentHeaderDelegate(
                  height: 330.h,
                  child: Center(
                    child: Column(
                      children: [
                        CustomCachedNetworkImage(
                          imageUrl: widget.product.cover,
                          width: 150,
                          height: 225,
                        ),
                        _buildNameAndAuthor(context),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: appPaddings.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.summary,
                        style: appTextStyle.manropeBold20,
                      ),
                      Text(
                        widget.product.description,
                        style: appTextStyle.manropeRegular16.copyWith(
                          color: appColors.cosmicVoid.withOpacity(.6),
                        ),
                      ),
                      kBottomNavigationBarHeight.verticalSpace,
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: appPaddings.vertical.top.h,
            child: InkWell(
              onTap: () => notifier.likeProduct(
                context,
                productId: widget.product.id,
              ),
              child: Container(
                width: 44.w,
                height: 44.h,
                margin: appPaddings.horizontal,
                padding: 10.padAll,
                decoration: BoxDecoration(
                  color: appColors.maWhite,
                  shape: BoxShape.circle,
                ),
                child: state.isLike
                    ? AppIcons.icHeartFilled.svg
                    : AppIcons.icHeartOutlined.svg,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: appPaddings.horizontal + 12.padBottom,
        child: _CustomBuyNowButton(
          price: widget.product.price,
          onPressed: () {},
        ),
      ),
    );
  }

  Column _buildNameAndAuthor(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.product.name,
          overflow: TextOverflow.ellipsis,
          style: appTextStyle.manropeBold20,
        ),
        4.verticalSpace,
        Text(
          widget.product.author,
          overflow: TextOverflow.ellipsis,
          style: appTextStyle.manropeSemiBold16.copyWith(
            color: appColors.cosmicVoid.withOpacity(.6),
          ),
        ),
      ],
    );
  }
}
