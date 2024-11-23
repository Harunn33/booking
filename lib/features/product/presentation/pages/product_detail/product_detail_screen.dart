import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/enums/app_icons.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';
import 'package:piton_test_case/core/widgets/app_bar/general_app_bar.dart';
import 'package:piton_test_case/core/widgets/cached_network_image/custom_cached_network_image.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320.h,
            collapsedHeight: 70.h,
            pinned: true,
            automaticallyImplyLeading: false,
            actions: [
              InkWell(
                onTap: notifier.favoriteProduct,
                child: Container(
                  width: 44.w,
                  height: 44.h,
                  margin: appPaddings.horizontal,
                  padding: 10.padAll,
                  decoration: BoxDecoration(
                    color: appColors.maWhite,
                    shape: BoxShape.circle,
                  ),
                  child: state.isFavorite
                      ? AppIcons.icHeartFilled.svg
                      : AppIcons.icHeartOutlined.svg,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  CustomCachedNetworkImage(
                    imageUrl: widget.product.cover,
                    width: 150,
                    height: 225,
                  ),
                  _buildNameAndAuthor(context),
                ],
              ),
              title: _buildNameAndAuthor(context),
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
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    widget.product.description,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
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
      bottomNavigationBar: Container(
        padding: appPaddings.horizontal + kBottomNavigationBarHeight.padBottom,
        child: _CustomBuyNowButton(
          price: widget.product.price,
          isLoading: state.isLoading,
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
          style: Theme.of(context).textTheme.titleLarge,
        ),
        4.verticalSpace,
        Text(
          widget.product.author,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: appColors.cosmicVoid.withOpacity(.6),
              ),
        ),
      ],
    );
  }
}
