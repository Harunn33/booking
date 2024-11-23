import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';
import 'package:piton_test_case/core/extensions/string_ext.dart';
import 'package:piton_test_case/core/widgets/app_bar/general_app_bar.dart';
import 'package:piton_test_case/core/widgets/inputs/custom_serach_input.dart';
import 'package:piton_test_case/core/widgets/product_card/custom_vertical_product_car.dart';
import 'package:piton_test_case/core/widgets/sliver_persistent_header/custom_sliver_persistent_header_delegate.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:piton_test_case/features/product/presentation/pages/view_all/mixin/view_all_mixin.dart';
import 'package:piton_test_case/features/product/presentation/providers/view_all_notifier.dart';

@RoutePage()
class ViewAllScreen extends ConsumerStatefulWidget {
  const ViewAllScreen({
    required this.products,
    required this.pageTitle,
    super.key,
  });
  final String pageTitle;
  final List<Product> products;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends ConsumerState<ViewAllScreen>
    with ViewAllMixin {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(viewAllProvider);
    return Scaffold(
      appBar: GeneralAppBar(
        pageTitle: widget.pageTitle.getLocalizedCategoryFilter(
          context,
        ),
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverPersistentHeader(
              floating: true,
              delegate: CustomSliverPersistentHeaderDelegate(
                height: 50.h,
                child: Padding(
                  padding: appPaddings.horizontal,
                  child: CustomSearchInput(
                    searchController: state.searchController,
                    hintText: context.l10n.search,
                    onChanged: searchOnChanged,
                  ),
                ),
              ),
            ),
          ];
        },
        body: GridView.builder(
          padding: appPaddings.horizontal + appPaddings.vertical + 24.padBottom,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 284.h,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 20.w,
          ),
          itemBuilder: (context, index) {
            final product = state.searchedProducts[index];
            return CustomVerticalProductCard(product: product);
          },
          itemCount: state.searchedProducts.length,
        ),
      ),
    );
  }
}
