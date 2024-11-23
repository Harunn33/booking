part of '../product_detail_screen.dart';

class _CustomBuyNowButton extends StatelessWidget {
  const _CustomBuyNowButton({
    required this.price,
    this.onPressed,
    this.isLoading = false,
  });
  final VoidCallback? onPressed;
  final bool isLoading;
  final double price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 60.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColors.instance.majorelleBlue,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$price \$',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: AppColors.instance.white,
                        ),
                  ),
                  Text(
                    context.l10n.buyNow,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.instance.white,
                        ),
                  ),
                ],
              ),
      ),
    );
  }
}
