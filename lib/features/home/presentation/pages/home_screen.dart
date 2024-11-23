import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/enums/app_icons.dart';
import 'package:piton_test_case/core/extensions/border_radius_ext.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';
import 'package:piton_test_case/core/extensions/string_ext.dart';
import 'package:piton_test_case/core/widgets/app_bar/general_app_bar.dart';
import 'package:piton_test_case/core/widgets/inputs/custom_serach_input.dart';
import 'package:piton_test_case/core/widgets/product_card/custom_product_card.dart';
import 'package:piton_test_case/core/widgets/sliver_persistent_header/custom_sliver_persistent_header_delegate.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:piton_test_case/features/home/presentation/pages/mixin/home_mixin.dart';
import 'package:piton_test_case/features/home/presentation/providers/home_notifier.dart';

part 'widgets/category_filter_button.dart';
part 'widgets/product_list_section_by_category.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> with HomeMixin {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);
    return Scaffold(
      appBar: GeneralAppBar(
        leading: Padding(
          padding: appPaddings.horizontal,
          child: AppIcons.icLogo.svg,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: refreshPage,
        edgeOffset: (kToolbarHeight * 2) + 24.h,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: 24.padTop,
              sliver: SliverPersistentHeader(
                floating: true,
                delegate: CustomSliverPersistentHeaderDelegate(
                  child: ColoredBox(
                    color: appColors.white,
                    child: Column(
                      children: [
                        Consumer(
                          builder: (context, ref, child) {
                            final categories =
                                ref.watch(homeProvider).categories;
                            return SizedBox(
                              height: 42.h,
                              child: ListView.separated(
                                padding: appPaddings.horizontal,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final filter = categories[index];
                                  return _CategoryFilterButton(
                                    title:
                                        filter.name.getLocalizedCategoryFilter(
                                      context,
                                    ),
                                    onTap: () {
                                      ref
                                          .read(homeProvider.notifier)
                                          .selectCategory(
                                            context,
                                            category: filter,
                                          );
                                    },
                                    isSelected: filter.isSelected,
                                  );
                                },
                                separatorBuilder: (_, __) => 12.horizontalSpace,
                                itemCount: categories.length,
                              ),
                            );
                          },
                        ),
                        12.verticalSpace,
                        Padding(
                          padding: appPaddings.horizontal,
                          child: CustomSearchInput(
                            searchController: state.searchController,
                            hintText: context.l10n.search,
                            onChanged: searchOnChanged,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: 36.padBottom,
              sliver: SliverToBoxAdapter(
                child: AnimatedCrossFade(
                  firstChild: state.searchedProducts.isNotEmpty ||
                          state.searchController.text.isNotEmpty
                      ? Padding(
                          padding: 36.padTop,
                          child: _ProductListSectionByCategory(
                            isSearchResults: true,
                            products: state.searchedProducts,
                            categoryName: context.l10n.searchResults,
                          ),
                        )
                      : state.products.isEmpty
                          ? Column(
                              children: state.allProductsByCategory.map(
                                (product) {
                                  final categories = state.categories
                                      .where(
                                        (element) => element.id != 0,
                                      )
                                      .toList();
                                  final index = state.allProductsByCategory
                                      .indexOf(product);
                                  final categoryName = categories[index].name;
                                  return Padding(
                                    padding: 24.padTop,
                                    child: _ProductListSectionByCategory(
                                      navigateToViewAll: () =>
                                          navigateToViewAll(
                                        context,
                                        pageTitle: categoryName,
                                        products: product.product,
                                      ),
                                      products: product.product,
                                      categoryName: categoryName
                                          .getLocalizedCategoryFilter(
                                        context,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            )
                          : _ProductListSectionByCategory(
                              navigateToViewAll: () => navigateToViewAll(
                                context,
                                pageTitle: state.selectedCategory?.name ??
                                    context.l10n.all,
                                products: state.products,
                              ),
                              products: state.products,
                              categoryName: (state.selectedCategory?.name ??
                                      context.l10n.all)
                                  .getLocalizedCategoryFilter(
                                context,
                              ),
                            ),
                  secondChild: const Center(
                    child: CircularProgressIndicator(),
                  ),
                  crossFadeState: state.isLoading
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
