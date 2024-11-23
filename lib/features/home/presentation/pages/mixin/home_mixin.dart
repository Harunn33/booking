import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/cache/product_cache.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/init/app_init.dart';
import 'package:piton_test_case/features/home/presentation/pages/home_screen.dart';
import 'package:piton_test_case/features/home/presentation/providers/home_notifier.dart';

mixin HomeMixin on ConsumerState<HomeScreen> {
  final appPaddings = AppPaddings.instance;
  final appColors = AppColors.instance;

  String getLocalizedCategoryFilter(
    BuildContext context, {
    required String category,
  }) {
    switch (category) {
      case 'All':
        return context.l10n.all;
      case 'Best Seller':
        return context.l10n.bestSeller;
      case 'Classics':
        return context.l10n.classics;
      case 'Children':
        return context.l10n.children;
      case 'Philosophy':
        return context.l10n.philosophy;
      default:
        return '';
    }
  }

  Future<void> fetchCategories() async {
    await ref.read(homeProvider.notifier).getCategories(context);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchCategories();
    });
  }

  Future<void> refreshPage() async {
    getIt<ProductCacheService>().clearCache();

    await ref.read(homeProvider.notifier).getAllProductByCategory(context);
  }
}
