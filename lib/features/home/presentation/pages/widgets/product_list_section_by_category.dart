part of '../home_screen.dart';

class _ProductListSectionByCategory extends StatelessWidget {
  const _ProductListSectionByCategory({
    required this.categoryName,
    required this.products,
  });
  final String categoryName;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    final appPaddings = AppPaddings.instance;
    final appColors = AppColors.instance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: appPaddings.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              CustomTextButton(
                text: context.l10n.viewAll,
                onPressed: () {},
                textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: appColors.entanRed,
                    ),
              ),
            ],
          ),
        ),
        12.verticalSpace,
        SizedBox(
          height: 140.h,
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
