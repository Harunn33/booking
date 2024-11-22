// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryResponseModel _$CategoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponseModel {
  List<CategoryItemModel> get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResponseModelCopyWith<CategoryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseModelCopyWith<$Res> {
  factory $CategoryResponseModelCopyWith(CategoryResponseModel value,
          $Res Function(CategoryResponseModel) then) =
      _$CategoryResponseModelCopyWithImpl<$Res, CategoryResponseModel>;
  @useResult
  $Res call({List<CategoryItemModel> category});
}

/// @nodoc
class _$CategoryResponseModelCopyWithImpl<$Res,
        $Val extends CategoryResponseModel>
    implements $CategoryResponseModelCopyWith<$Res> {
  _$CategoryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseModelImplCopyWith<$Res>
    implements $CategoryResponseModelCopyWith<$Res> {
  factory _$$CategoryResponseModelImplCopyWith(
          _$CategoryResponseModelImpl value,
          $Res Function(_$CategoryResponseModelImpl) then) =
      __$$CategoryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryItemModel> category});
}

/// @nodoc
class __$$CategoryResponseModelImplCopyWithImpl<$Res>
    extends _$CategoryResponseModelCopyWithImpl<$Res,
        _$CategoryResponseModelImpl>
    implements _$$CategoryResponseModelImplCopyWith<$Res> {
  __$$CategoryResponseModelImplCopyWithImpl(_$CategoryResponseModelImpl _value,
      $Res Function(_$CategoryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryResponseModelImpl(
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseModelImpl implements _CategoryResponseModel {
  _$CategoryResponseModelImpl({required final List<CategoryItemModel> category})
      : _category = category;

  factory _$CategoryResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseModelImplFromJson(json);

  final List<CategoryItemModel> _category;
  @override
  List<CategoryItemModel> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'CategoryResponseModel(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseModelImpl &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseModelImplCopyWith<_$CategoryResponseModelImpl>
      get copyWith => __$$CategoryResponseModelImplCopyWithImpl<
          _$CategoryResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponseModel implements CategoryResponseModel {
  factory _CategoryResponseModel(
          {required final List<CategoryItemModel> category}) =
      _$CategoryResponseModelImpl;

  factory _CategoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseModelImpl.fromJson;

  @override
  List<CategoryItemModel> get category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryResponseModelImplCopyWith<_$CategoryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryItemModel _$CategoryItemModelFromJson(Map<String, dynamic> json) {
  return _CategoryItemModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryItemModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemModelCopyWith<CategoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemModelCopyWith<$Res> {
  factory $CategoryItemModelCopyWith(
          CategoryItemModel value, $Res Function(CategoryItemModel) then) =
      _$CategoryItemModelCopyWithImpl<$Res, CategoryItemModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(defaultValue: false) bool isSelected});
}

/// @nodoc
class _$CategoryItemModelCopyWithImpl<$Res, $Val extends CategoryItemModel>
    implements $CategoryItemModelCopyWith<$Res> {
  _$CategoryItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryItemModelImplCopyWith<$Res>
    implements $CategoryItemModelCopyWith<$Res> {
  factory _$$CategoryItemModelImplCopyWith(_$CategoryItemModelImpl value,
          $Res Function(_$CategoryItemModelImpl) then) =
      __$$CategoryItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(defaultValue: false) bool isSelected});
}

/// @nodoc
class __$$CategoryItemModelImplCopyWithImpl<$Res>
    extends _$CategoryItemModelCopyWithImpl<$Res, _$CategoryItemModelImpl>
    implements _$$CategoryItemModelImplCopyWith<$Res> {
  __$$CategoryItemModelImplCopyWithImpl(_$CategoryItemModelImpl _value,
      $Res Function(_$CategoryItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? isSelected = null,
  }) {
    return _then(_$CategoryItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItemModelImpl implements _CategoryItemModel {
  _$CategoryItemModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(defaultValue: false) required this.isSelected});

  factory _$CategoryItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(defaultValue: false)
  final bool isSelected;

  @override
  String toString() {
    return 'CategoryItemModel(id: $id, name: $name, createdAt: $createdAt, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryItemModelImplCopyWith<_$CategoryItemModelImpl> get copyWith =>
      __$$CategoryItemModelImplCopyWithImpl<_$CategoryItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryItemModel implements CategoryItemModel {
  factory _CategoryItemModel(
          {required final int id,
          required final String name,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(defaultValue: false) required final bool isSelected}) =
      _$CategoryItemModelImpl;

  factory _CategoryItemModel.fromJson(Map<String, dynamic> json) =
      _$CategoryItemModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(defaultValue: false)
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$CategoryItemModelImplCopyWith<_$CategoryItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
