import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/features/product/presentation/pages/product_detail/product_detail_screen.dart';

mixin ProductDetailMixin on ConsumerState<ProductDetailScreen> {
  final appColors = AppColors.instance;
  final appPaddings = AppPaddings.instance;
}
