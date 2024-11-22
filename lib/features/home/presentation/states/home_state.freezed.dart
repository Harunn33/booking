// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CategoryItemModel> get categories => throw _privateConstructorUsedError;
  CategoryItemModel? get selectedCategory => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  List<ProductResponseModel> get allProductsByCategory =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<CategoryItemModel> categories,
      CategoryItemModel? selectedCategory,
      List<Product> products,
      List<ProductResponseModel> allProductsByCategory});

  $CategoryItemModelCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? categories = null,
    Object? selectedCategory = freezed,
    Object? products = null,
    Object? allProductsByCategory = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryItemModel?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      allProductsByCategory: null == allProductsByCategory
          ? _value.allProductsByCategory
          : allProductsByCategory // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryItemModelCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryItemModelCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<CategoryItemModel> categories,
      CategoryItemModel? selectedCategory,
      List<Product> products,
      List<ProductResponseModel> allProductsByCategory});

  @override
  $CategoryItemModelCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? categories = null,
    Object? selectedCategory = freezed,
    Object? products = null,
    Object? allProductsByCategory = null,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryItemModel?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      allProductsByCategory: null == allProductsByCategory
          ? _value._allProductsByCategory
          : allProductsByCategory // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseModel>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.isLoading,
      required final List<CategoryItemModel> categories,
      required this.selectedCategory,
      required final List<Product> products,
      required final List<ProductResponseModel> allProductsByCategory})
      : _categories = categories,
        _products = products,
        _allProductsByCategory = allProductsByCategory;

  @override
  final bool isLoading;
  final List<CategoryItemModel> _categories;
  @override
  List<CategoryItemModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final CategoryItemModel? selectedCategory;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductResponseModel> _allProductsByCategory;
  @override
  List<ProductResponseModel> get allProductsByCategory {
    if (_allProductsByCategory is EqualUnmodifiableListView)
      return _allProductsByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allProductsByCategory);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, categories: $categories, selectedCategory: $selectedCategory, products: $products, allProductsByCategory: $allProductsByCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._allProductsByCategory, _allProductsByCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_categories),
      selectedCategory,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_allProductsByCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
          {required final bool isLoading,
          required final List<CategoryItemModel> categories,
          required final CategoryItemModel? selectedCategory,
          required final List<Product> products,
          required final List<ProductResponseModel> allProductsByCategory}) =
      _$HomeStateImpl;

  @override
  bool get isLoading;
  @override
  List<CategoryItemModel> get categories;
  @override
  CategoryItemModel? get selectedCategory;
  @override
  List<Product> get products;
  @override
  List<ProductResponseModel> get allProductsByCategory;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
