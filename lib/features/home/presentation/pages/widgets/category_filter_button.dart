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
    final appTextStyle = AppTextStyle.instance;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45.h,
        padding: appPaddings.generalSymetric,
        decoration: BoxDecoration(
          color: isSelected ? appColors.majorelleBlue : appColors.maWhite,
          borderRadius: 4.radiusAll,
        ),
        child: Text(
          title,
          style: isSelected
              ? appTextStyle.manropeSemiBold16.copyWith(
                  color: appColors.white,
                )
              : appTextStyle.manropeRegular16,
        ),
      ),
    );
  }
}
