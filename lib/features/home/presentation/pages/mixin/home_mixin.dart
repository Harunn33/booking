import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/cache/product_cache.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/core/init/app_init.dart';
import 'package:piton_test_case/core/routing/app_router.dart';
import 'package:piton_test_case/features/home/data/model/product/resp/product_response_model.dart';
import 'package:piton_test_case/features/home/presentation/pages/home_screen.dart';
import 'package:piton_test_case/features/home/presentation/providers/home_notifier.dart';

mixin HomeMixin on ConsumerState<HomeScreen> {
  final appPaddings = AppPaddings.instance;
  final appColors = AppColors.instance;

  late CancelableOperation<String?> _searchOperation;
  final _searchingDelay = const Duration(milliseconds: 400);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      startSearchOperation();
      fetchCategories();
    });
  }

  void startSearchOperation() {
    _searchOperation = CancelableOperation.fromFuture(
      Future.delayed(_searchingDelay),
    );
  }

  void searchOnChanged(String value) {
    _searchOperation.cancel();
    startSearchOperation();
    _searchOperation.value.whenComplete(() async {
      if (value.isEmpty) {
        ref.read(homeProvider.notifier).getAllProductByCategory(context);
        return;
      }
      ref.read(homeProvider.notifier).searchProduct(
            query: value,
          );
    });
  }

  Future<void> fetchCategories() async {
    await ref.read(homeProvider.notifier).getCategories(context);
  }

  Future<void> refreshPage() async {
    getIt<ProductCacheService>().clearCache();

    await ref.read(homeProvider.notifier).getAllProductByCategory(context);
  }

  void navigateToViewAll(
    BuildContext context, {
    required String pageTitle,
    required List<Product> products,
  }) {
    context.router.push(
      ViewAllRoute(
        pageTitle: pageTitle,
        products: products,
      ),
    );
  }
}
