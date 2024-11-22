import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/extensions/border_radius_ext.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/extensions/padding_ext.dart';
import 'package:piton_test_case/core/widgets/app_bar/general_app_bar.dart';
import 'package:piton_test_case/core/widgets/buttons/custom_text_button.dart';
import 'package:piton_test_case/core/widgets/product_card/custom_product_card.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:piton_test_case/features/home/presentation/pages/mixin/home_mixin.dart';
import 'package:piton_test_case/features/home/presentation/providers/home_notifier.dart';

part 'widgets/category_filter_button.dart';
part 'widgets/product_list_section_by_category.dart';
part 'widgets/sliver_persistent_header_delegate.dart';

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
      appBar: const GeneralAppBar(),
      body: RefreshIndicator(
        onRefresh: refreshPage,
        edgeOffset: kToolbarHeight + 24.h,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: 24.padTop,
              sliver: SliverPersistentHeader(
                floating: true,
                delegate: _SliverPersistentHeaderDelegate(
                  child: Consumer(
                    builder: (context, ref, child) {
                      final categories = ref.watch(homeProvider).categories;
                      return SizedBox(
                        height: 42.h,
                        child: ListView.separated(
                          padding: appPaddings.horizontal,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final filter = categories[index];
                            return _CategoryFilterButton(
                              title: getLocalizedCategoryFilter(
                                context,
                                category: filter.name,
                              ),
                              onTap: () {
                                ref.read(homeProvider.notifier).selectCategory(
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
                ),
              ),
            ),
            SliverPadding(
              padding: 24.padBottom,
              sliver: SliverToBoxAdapter(
                child: AnimatedCrossFade(
                  firstChild: state.products.isEmpty
                      ? Column(
                          children: state.allProductsByCategory.map(
                            (product) {
                              final categories = state.categories
                                  .where(
                                    (element) => element.id != 0,
                                  )
                                  .toList();
                              final index =
                                  state.allProductsByCategory.indexOf(product);
                              return Padding(
                                padding: 12.padBottom,
                                child: _ProductListSectionByCategory(
                                  products: product.product,
                                  categoryName: getLocalizedCategoryFilter(
                                    context,
                                    category: categories[index].name,
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        )
                      : _ProductListSectionByCategory(
                          products: state.products,
                          categoryName: getLocalizedCategoryFilter(
                            context,
                            category: state.selectedCategory?.name ??
                                context.l10n.all,
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
