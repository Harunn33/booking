import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/constants/app_colors.dart';
import 'package:piton_test_case/core/constants/app_paddings.dart';
import 'package:piton_test_case/features/product/presentation/pages/view_all/view_all_screen.dart';
import 'package:piton_test_case/features/product/presentation/providers/view_all_notifier.dart';

mixin ViewAllMixin on ConsumerState<ViewAllScreen> {
  final appPaddings = AppPaddings.instance;
  final appColors = AppColors.instance;

  late CancelableOperation<String?> _searchOperation;
  final _searchingDelay = const Duration(milliseconds: 400);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      initializeProducts();
      startSearchOperation();
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
    _searchOperation.value.whenComplete(
      () async {
        initializeProducts(query: value);
      },
    );
  }

  void initializeProducts({
    String query = '',
  }) {
    ref.read(viewAllProvider.notifier).searchProduct(
          query: query,
          products: widget.products,
        );
  }
}
