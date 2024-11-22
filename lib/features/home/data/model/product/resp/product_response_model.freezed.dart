// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponseModel _$ProductResponseModelFromJson(Map<String, dynamic> json) {
  return _ProductResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProductResponseModel {
  List<Product> get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseModelCopyWith<ProductResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseModelCopyWith<$Res> {
  factory $ProductResponseModelCopyWith(ProductResponseModel value,
          $Res Function(ProductResponseModel) then) =
      _$ProductResponseModelCopyWithImpl<$Res, ProductResponseModel>;
  @useResult
  $Res call({List<Product> product});
}

/// @nodoc
class _$ProductResponseModelCopyWithImpl<$Res,
        $Val extends ProductResponseModel>
    implements $ProductResponseModelCopyWith<$Res> {
  _$ProductResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductResponseModelImplCopyWith<$Res>
    implements $ProductResponseModelCopyWith<$Res> {
  factory _$$ProductResponseModelImplCopyWith(_$ProductResponseModelImpl value,
          $Res Function(_$ProductResponseModelImpl) then) =
      __$$ProductResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> product});
}

/// @nodoc
class __$$ProductResponseModelImplCopyWithImpl<$Res>
    extends _$ProductResponseModelCopyWithImpl<$Res, _$ProductResponseModelImpl>
    implements _$$ProductResponseModelImplCopyWith<$Res> {
  __$$ProductResponseModelImplCopyWithImpl(_$ProductResponseModelImpl _value,
      $Res Function(_$ProductResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductResponseModelImpl(
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseModelImpl implements _ProductResponseModel {
  const _$ProductResponseModelImpl({required final List<Product> product})
      : _product = product;

  factory _$ProductResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseModelImplFromJson(json);

  final List<Product> _product;
  @override
  List<Product> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'ProductResponseModel(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseModelImpl &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseModelImplCopyWith<_$ProductResponseModelImpl>
      get copyWith =>
          __$$ProductResponseModelImplCopyWithImpl<_$ProductResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProductResponseModel implements ProductResponseModel {
  const factory _ProductResponseModel({required final List<Product> product}) =
      _$ProductResponseModelImpl;

  factory _ProductResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProductResponseModelImpl.fromJson;

  @override
  List<Product> get product;
  @override
  @JsonKey(ignore: true)
  _$$ProductResponseModelImplCopyWith<_$ProductResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get author => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get sales => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes_aggregate')
  LikesAggregate get likesAggregate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String author,
      String cover,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String description,
      int id,
      String name,
      double price,
      int sales,
      String slug,
      @JsonKey(name: 'likes_aggregate') LikesAggregate likesAggregate});

  $LikesAggregateCopyWith<$Res> get likesAggregate;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? cover = null,
    Object? createdAt = null,
    Object? description = null,
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? sales = null,
    Object? slug = null,
    Object? likesAggregate = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      likesAggregate: null == likesAggregate
          ? _value.likesAggregate
          : likesAggregate // ignore: cast_nullable_to_non_nullable
              as LikesAggregate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LikesAggregateCopyWith<$Res> get likesAggregate {
    return $LikesAggregateCopyWith<$Res>(_value.likesAggregate, (value) {
      return _then(_value.copyWith(likesAggregate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      String cover,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String description,
      int id,
      String name,
      double price,
      int sales,
      String slug,
      @JsonKey(name: 'likes_aggregate') LikesAggregate likesAggregate});

  @override
  $LikesAggregateCopyWith<$Res> get likesAggregate;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? cover = null,
    Object? createdAt = null,
    Object? description = null,
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? sales = null,
    Object? slug = null,
    Object? likesAggregate = null,
  }) {
    return _then(_$ProductImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      likesAggregate: null == likesAggregate
          ? _value.likesAggregate
          : likesAggregate // ignore: cast_nullable_to_non_nullable
              as LikesAggregate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.author,
      required this.cover,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.description,
      required this.id,
      required this.name,
      required this.price,
      required this.sales,
      required this.slug,
      @JsonKey(name: 'likes_aggregate') required this.likesAggregate});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String author;
  @override
  final String cover;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final String description;
  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final int sales;
  @override
  final String slug;
  @override
  @JsonKey(name: 'likes_aggregate')
  final LikesAggregate likesAggregate;

  @override
  String toString() {
    return 'Product(author: $author, cover: $cover, createdAt: $createdAt, description: $description, id: $id, name: $name, price: $price, sales: $sales, slug: $slug, likesAggregate: $likesAggregate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sales, sales) || other.sales == sales) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.likesAggregate, likesAggregate) ||
                other.likesAggregate == likesAggregate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, cover, createdAt,
      description, id, name, price, sales, slug, likesAggregate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String author,
      required final String cover,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final String description,
      required final int id,
      required final String name,
      required final double price,
      required final int sales,
      required final String slug,
      @JsonKey(name: 'likes_aggregate')
      required final LikesAggregate likesAggregate}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get author;
  @override
  String get cover;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  String get description;
  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  int get sales;
  @override
  String get slug;
  @override
  @JsonKey(name: 'likes_aggregate')
  LikesAggregate get likesAggregate;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LikesAggregate _$LikesAggregateFromJson(Map<String, dynamic> json) {
  return _LikesAggregate.fromJson(json);
}

/// @nodoc
mixin _$LikesAggregate {
  Aggregate get aggregate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikesAggregateCopyWith<LikesAggregate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesAggregateCopyWith<$Res> {
  factory $LikesAggregateCopyWith(
          LikesAggregate value, $Res Function(LikesAggregate) then) =
      _$LikesAggregateCopyWithImpl<$Res, LikesAggregate>;
  @useResult
  $Res call({Aggregate aggregate});

  $AggregateCopyWith<$Res> get aggregate;
}

/// @nodoc
class _$LikesAggregateCopyWithImpl<$Res, $Val extends LikesAggregate>
    implements $LikesAggregateCopyWith<$Res> {
  _$LikesAggregateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregate = null,
  }) {
    return _then(_value.copyWith(
      aggregate: null == aggregate
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as Aggregate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AggregateCopyWith<$Res> get aggregate {
    return $AggregateCopyWith<$Res>(_value.aggregate, (value) {
      return _then(_value.copyWith(aggregate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LikesAggregateImplCopyWith<$Res>
    implements $LikesAggregateCopyWith<$Res> {
  factory _$$LikesAggregateImplCopyWith(_$LikesAggregateImpl value,
          $Res Function(_$LikesAggregateImpl) then) =
      __$$LikesAggregateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Aggregate aggregate});

  @override
  $AggregateCopyWith<$Res> get aggregate;
}

/// @nodoc
class __$$LikesAggregateImplCopyWithImpl<$Res>
    extends _$LikesAggregateCopyWithImpl<$Res, _$LikesAggregateImpl>
    implements _$$LikesAggregateImplCopyWith<$Res> {
  __$$LikesAggregateImplCopyWithImpl(
      _$LikesAggregateImpl _value, $Res Function(_$LikesAggregateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregate = null,
  }) {
    return _then(_$LikesAggregateImpl(
      aggregate: null == aggregate
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as Aggregate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikesAggregateImpl implements _LikesAggregate {
  const _$LikesAggregateImpl({required this.aggregate});

  factory _$LikesAggregateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikesAggregateImplFromJson(json);

  @override
  final Aggregate aggregate;

  @override
  String toString() {
    return 'LikesAggregate(aggregate: $aggregate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikesAggregateImpl &&
            (identical(other.aggregate, aggregate) ||
                other.aggregate == aggregate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aggregate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikesAggregateImplCopyWith<_$LikesAggregateImpl> get copyWith =>
      __$$LikesAggregateImplCopyWithImpl<_$LikesAggregateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikesAggregateImplToJson(
      this,
    );
  }
}

abstract class _LikesAggregate implements LikesAggregate {
  const factory _LikesAggregate({required final Aggregate aggregate}) =
      _$LikesAggregateImpl;

  factory _LikesAggregate.fromJson(Map<String, dynamic> json) =
      _$LikesAggregateImpl.fromJson;

  @override
  Aggregate get aggregate;
  @override
  @JsonKey(ignore: true)
  _$$LikesAggregateImplCopyWith<_$LikesAggregateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Aggregate _$AggregateFromJson(Map<String, dynamic> json) {
  return _Aggregate.fromJson(json);
}

/// @nodoc
mixin _$Aggregate {
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AggregateCopyWith<Aggregate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregateCopyWith<$Res> {
  factory $AggregateCopyWith(Aggregate value, $Res Function(Aggregate) then) =
      _$AggregateCopyWithImpl<$Res, Aggregate>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$AggregateCopyWithImpl<$Res, $Val extends Aggregate>
    implements $AggregateCopyWith<$Res> {
  _$AggregateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AggregateImplCopyWith<$Res>
    implements $AggregateCopyWith<$Res> {
  factory _$$AggregateImplCopyWith(
          _$AggregateImpl value, $Res Function(_$AggregateImpl) then) =
      __$$AggregateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$AggregateImplCopyWithImpl<$Res>
    extends _$AggregateCopyWithImpl<$Res, _$AggregateImpl>
    implements _$$AggregateImplCopyWith<$Res> {
  __$$AggregateImplCopyWithImpl(
      _$AggregateImpl _value, $Res Function(_$AggregateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$AggregateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AggregateImpl implements _Aggregate {
  const _$AggregateImpl({required this.count});

  factory _$AggregateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AggregateImplFromJson(json);

  @override
  final int count;

  @override
  String toString() {
    return 'Aggregate(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AggregateImplCopyWith<_$AggregateImpl> get copyWith =>
      __$$AggregateImplCopyWithImpl<_$AggregateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AggregateImplToJson(
      this,
    );
  }
}

abstract class _Aggregate implements Aggregate {
  const factory _Aggregate({required final int count}) = _$AggregateImpl;

  factory _Aggregate.fromJson(Map<String, dynamic> json) =
      _$AggregateImpl.fromJson;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$AggregateImplCopyWith<_$AggregateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
