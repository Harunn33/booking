// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_all_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewAllState {
  bool get isLoading => throw _privateConstructorUsedError;
  TextEditingController get searchController =>
      throw _privateConstructorUsedError;
  List<Product> get searchedProducts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewAllStateCopyWith<ViewAllState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewAllStateCopyWith<$Res> {
  factory $ViewAllStateCopyWith(
          ViewAllState value, $Res Function(ViewAllState) then) =
      _$ViewAllStateCopyWithImpl<$Res, ViewAllState>;
  @useResult
  $Res call(
      {bool isLoading,
      TextEditingController searchController,
      List<Product> searchedProducts});
}

/// @nodoc
class _$ViewAllStateCopyWithImpl<$Res, $Val extends ViewAllState>
    implements $ViewAllStateCopyWith<$Res> {
  _$ViewAllStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchController = null,
    Object? searchedProducts = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchController: null == searchController
          ? _value.searchController
          : searchController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      searchedProducts: null == searchedProducts
          ? _value.searchedProducts
          : searchedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewAllStateImplCopyWith<$Res>
    implements $ViewAllStateCopyWith<$Res> {
  factory _$$ViewAllStateImplCopyWith(
          _$ViewAllStateImpl value, $Res Function(_$ViewAllStateImpl) then) =
      __$$ViewAllStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      TextEditingController searchController,
      List<Product> searchedProducts});
}

/// @nodoc
class __$$ViewAllStateImplCopyWithImpl<$Res>
    extends _$ViewAllStateCopyWithImpl<$Res, _$ViewAllStateImpl>
    implements _$$ViewAllStateImplCopyWith<$Res> {
  __$$ViewAllStateImplCopyWithImpl(
      _$ViewAllStateImpl _value, $Res Function(_$ViewAllStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchController = null,
    Object? searchedProducts = null,
  }) {
    return _then(_$ViewAllStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchController: null == searchController
          ? _value.searchController
          : searchController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      searchedProducts: null == searchedProducts
          ? _value._searchedProducts
          : searchedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ViewAllStateImpl implements _ViewAllState {
  const _$ViewAllStateImpl(
      {required this.isLoading,
      required this.searchController,
      required final List<Product> searchedProducts})
      : _searchedProducts = searchedProducts;

  @override
  final bool isLoading;
  @override
  final TextEditingController searchController;
  final List<Product> _searchedProducts;
  @override
  List<Product> get searchedProducts {
    if (_searchedProducts is EqualUnmodifiableListView)
      return _searchedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedProducts);
  }

  @override
  String toString() {
    return 'ViewAllState(isLoading: $isLoading, searchController: $searchController, searchedProducts: $searchedProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewAllStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchController, searchController) ||
                other.searchController == searchController) &&
            const DeepCollectionEquality()
                .equals(other._searchedProducts, _searchedProducts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, searchController,
      const DeepCollectionEquality().hash(_searchedProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewAllStateImplCopyWith<_$ViewAllStateImpl> get copyWith =>
      __$$ViewAllStateImplCopyWithImpl<_$ViewAllStateImpl>(this, _$identity);
}

abstract class _ViewAllState implements ViewAllState {
  const factory _ViewAllState(
      {required final bool isLoading,
      required final TextEditingController searchController,
      required final List<Product> searchedProducts}) = _$ViewAllStateImpl;

  @override
  bool get isLoading;
  @override
  TextEditingController get searchController;
  @override
  List<Product> get searchedProducts;
  @override
  @JsonKey(ignore: true)
  _$$ViewAllStateImplCopyWith<_$ViewAllStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
