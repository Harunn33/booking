part of '../home_screen.dart';

class _CategoryFilterButton extends StatelessWidget {
  const _CategoryFilterButton({
    required this.title,
    required this.onTap,
    this.isSelected = false,
  });

  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final appPaddings = AppPaddings.instance;
    final appColors = AppColors.instance;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 42.h,
        padding: appPaddings.generalSymetric,
        decoration: BoxDecoration(
          color: isSelected ? appColors.majorelleBlue : appColors.maWhite,
          borderRadius: 4.radiusAll,
        ),
        child: Text(
          title,
          style: isSelected
              ? Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: appColors.white,
                  )
              : Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: appColors.cosmicVoid.withOpacity(.4),
                  ),
        ),
      ),
    );
  }
}
