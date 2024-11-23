part of '../home_screen.dart';

class _ProductListSectionByCategory extends StatelessWidget {
  const _ProductListSectionByCategory({
    required this.categoryName,
    required this.products,
    this.navigateToViewAll,
    this.isSearchResults = false,
  });
  final String categoryName;
  final List<Product> products;
  final VoidCallback? navigateToViewAll;
  final bool isSearchResults;

  @override
  Widget build(BuildContext context) {
    final appPaddings = AppPaddings.instance;
    final appColors = AppColors.instance;
    final appTextStyle = AppTextStyle.instance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: isSearchResults ? null : navigateToViewAll,
          child: Padding(
            padding: appPaddings.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  categoryName,
                  style: appTextStyle.manropeBold20,
                ),
                Visibility(
                  visible: !isSearchResults,
                  child: Text(
                    context.l10n.viewAll,
                    style: appTextStyle.manropeBold12.copyWith(
                      color: appColors.entanRed,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        12.verticalSpace,
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            padding: appPaddings.horizontal,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = products[index];
              return CustomProductCard(
                product: product,
              );
            },
            separatorBuilder: (_, __) => 12.horizontalSpace,
            itemCount: products.length,
          ),
        ),
      ],
    );
  }
}
