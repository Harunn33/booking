import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piton_test_case/core/cache/category_cache.dart';
import 'package:piton_test_case/core/cache/product_cache.dart';
import 'package:piton_test_case/core/constants/api_constants.dart';
import 'package:piton_test_case/core/extensions/context_ext.dart';
import 'package:piton_test_case/core/init/app_init.dart';
import 'package:piton_test_case/features/home/data/model/category/category_response_model.dart';
import 'package:piton_test_case/features/home/data/model/cover_image/req/cover_image_request_model.dart';
import 'package:piton_test_case/features/home/data/model/cover_image/resp/cover_image_response_model.dart';
import 'package:piton_test_case/features/home/domain/repository/home_repository.dart';
import 'package:piton_test_case/features/home/presentation/states/home_state.dart';

final homeProvider = NotifierProvider.autoDispose<HomeNotifier, HomeState>(
  HomeNotifier.new,
);

class HomeNotifier extends AutoDisposeNotifier<HomeState> {
  HomeNotifier();

  @override
  HomeState build() {
    _init();
    return HomeState.initial();
  }

  Future<void> _init() async {}

  Future<void> selectCategory(
    BuildContext context, {
    required CategoryItemModel category,
  }) async {
    if (state.selectedCategory?.id == category.id) return;

    state = state.copyWith(
      selectedCategory: category,
      categories: state.categories.map(
        (e) {
          return e.copyWith(isSelected: e.id == category.id);
        },
      ).toList(),
    );
    await getProductsByCategoryId(context);
    if (state.searchController.text.isNotEmpty) {
      await searchProduct(query: state.searchController.text);
    }
  }

  void _updateCategoriesWithCache({
    required List<CategoryItemModel> cachedCategories,
  }) {
    state = state.copyWith(
      categories: [
        CategoryItemModel(
          id: 0,
          name: 'All',
          createdAt: DateTime.now().toIso8601String(),
          isSelected: true,
        ),
        ...cachedCategories,
      ],
    );
    state = state.copyWith(selectedCategory: state.categories.first);
  }

  void _updateCategoriesWithApi({
    required List<CategoryItemModel> categories,
  }) {
    state = state.copyWith(
      categories: [
        CategoryItemModel(
          id: 0,
          name: 'All',
          createdAt: DateTime.now().toIso8601String(),
          isSelected: true,
        ),
        ...categories,
      ],
    );
    state = state.copyWith(selectedCategory: state.categories.first);
  }

  Future<void> getCategories(
    BuildContext context,
  ) async {
    state = state.copyWith(isLoading: true);
    try {
      final cachedCategories =
          await getIt<CategoryCacheService>().getCachedCategories();
      if (cachedCategories.isNotEmpty) {
        _updateCategoriesWithCache(cachedCategories: cachedCategories);
        await getProductsByCategoryId(context);
        return;
      }
      final categories = await getIt<HomeRepository>().getAllCategories(
        context,
        endpoint:
            ApiConstants.instance.baseUrl + ApiConstants.instance.categories,
      );
      await getIt<CategoryCacheService>().cacheCategories(
        categories: categories.category,
      );
      _updateCategoriesWithApi(categories: categories.category);
      await getProductsByCategoryId(context);
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? '',
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> getProductsByCategoryId(
    BuildContext context,
  ) async {
    state = state.copyWith(isLoading: true);
    try {
      if (state.selectedCategory?.id == 0) {
        state = state.copyWith(products: []);
        await getAllProductByCategory(context);
        return;
      }

      state = state.copyWith(
        products:
            state.allProductsByCategory[state.selectedCategory!.id - 1].product,
      );
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? '',
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> getAllProductByCategory(
    BuildContext context,
  ) async {
    state = state.copyWith(isLoading: true);
    state = state.copyWith(allProductsByCategory: []);
    state = state.copyWith(searchedProducts: []);
    try {
      final cachedProducts =
          await getIt<ProductCacheService>().getCachedProducts();
      if (cachedProducts.isNotEmpty) {
        state = state.copyWith(
          allProductsByCategory: cachedProducts,
        );
        return;
      }

      final categories =
          state.categories.where((element) => element.id != 0).toList();
      for (final category in categories) {
        final result = await getIt<HomeRepository>().getProductsByCategoryId(
          context,
          endpoint:
              ApiConstants.instance.baseUrl + ApiConstants.instance.products,
          categoryId: category.id,
        );
        state = state.copyWith(
          allProductsByCategory: [
            ...state.allProductsByCategory,
            result,
          ],
        );
      }
      final updatedAllProductsByCategory = await Future.wait(
        state.allProductsByCategory.map((productList) async {
          final updatedProducts = await Future.wait(
            productList.product.map((product) async {
              final coverImage =
                  await _getCoverImage(context, fileName: product.cover);
              return product.copyWith(
                cover: coverImage?.actionProductImage.url ?? '',
              );
            }).toList(),
          );
          return productList.copyWith(product: updatedProducts);
        }).toList(),
      );

      state = state.copyWith(
        allProductsByCategory: updatedAllProductsByCategory,
      );
      await getIt<ProductCacheService>().cacheProducts(
        allProductsByCategory: state.allProductsByCategory,
      );
      if (state.searchController.text.isNotEmpty) {
        await searchProduct(query: state.searchController.text);
      }
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? '',
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<CoverImageResponseModel?> _getCoverImage(
    BuildContext context, {
    required String fileName,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      return await getIt<HomeRepository>().getCoverImageByFileName(
        context,
        endpoint:
            ApiConstants.instance.baseUrl + ApiConstants.instance.coverImage,
        coverImageRequestModel: CoverImageRequestModel(
          fileName: fileName,
        ),
      );
    } on DioException catch (e) {
      context.showSnackBar(
        e.response?.statusMessage ?? '',
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
    return null;
  }

  Future<void> searchProduct({
    required String query,
  }) async {
    state = state.copyWith(isLoading: true);
    if (state.selectedCategory?.id == 0) {
      final searchedProducts = state.allProductsByCategory
          .expand((element) => element.product)
          .where(
            (element) => element.name.toLowerCase().contains(
                  query.toLowerCase(),
                ),
          )
          .toList();
      state = state.copyWith(searchedProducts: searchedProducts);
      state = state.copyWith(isLoading: false);
      return;
    }
    final searchedProducts =
        state.allProductsByCategory[state.selectedCategory!.id - 1].product
            .where(
              (element) =>
                  element.name.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
    state = state.copyWith(searchedProducts: searchedProducts);
    state = state.copyWith(isLoading: false);
  }
}
