// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_or_unlike_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikeOrUnlikeRequestModel _$LikeOrUnlikeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LikeOrUnlikeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LikeOrUnlikeRequestModel {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeOrUnlikeRequestModelCopyWith<LikeOrUnlikeRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeOrUnlikeRequestModelCopyWith<$Res> {
  factory $LikeOrUnlikeRequestModelCopyWith(LikeOrUnlikeRequestModel value,
          $Res Function(LikeOrUnlikeRequestModel) then) =
      _$LikeOrUnlikeRequestModelCopyWithImpl<$Res, LikeOrUnlikeRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'product_id') int productId});
}

/// @nodoc
class _$LikeOrUnlikeRequestModelCopyWithImpl<$Res,
        $Val extends LikeOrUnlikeRequestModel>
    implements $LikeOrUnlikeRequestModelCopyWith<$Res> {
  _$LikeOrUnlikeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeOrUnlikeRequestModelImplCopyWith<$Res>
    implements $LikeOrUnlikeRequestModelCopyWith<$Res> {
  factory _$$LikeOrUnlikeRequestModelImplCopyWith(
          _$LikeOrUnlikeRequestModelImpl value,
          $Res Function(_$LikeOrUnlikeRequestModelImpl) then) =
      __$$LikeOrUnlikeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'product_id') int productId});
}

/// @nodoc
class __$$LikeOrUnlikeRequestModelImplCopyWithImpl<$Res>
    extends _$LikeOrUnlikeRequestModelCopyWithImpl<$Res,
        _$LikeOrUnlikeRequestModelImpl>
    implements _$$LikeOrUnlikeRequestModelImplCopyWith<$Res> {
  __$$LikeOrUnlikeRequestModelImplCopyWithImpl(
      _$LikeOrUnlikeRequestModelImpl _value,
      $Res Function(_$LikeOrUnlikeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? productId = null,
  }) {
    return _then(_$LikeOrUnlikeRequestModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeOrUnlikeRequestModelImpl implements _LikeOrUnlikeRequestModel {
  _$LikeOrUnlikeRequestModelImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'product_id') required this.productId});

  factory _$LikeOrUnlikeRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeOrUnlikeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;

  @override
  String toString() {
    return 'LikeOrUnlikeRequestModel(userId: $userId, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeOrUnlikeRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeOrUnlikeRequestModelImplCopyWith<_$LikeOrUnlikeRequestModelImpl>
      get copyWith => __$$LikeOrUnlikeRequestModelImplCopyWithImpl<
          _$LikeOrUnlikeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeOrUnlikeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LikeOrUnlikeRequestModel implements LikeOrUnlikeRequestModel {
  factory _LikeOrUnlikeRequestModel(
          {@JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'product_id') required final int productId}) =
      _$LikeOrUnlikeRequestModelImpl;

  factory _LikeOrUnlikeRequestModel.fromJson(Map<String, dynamic> json) =
      _$LikeOrUnlikeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$$LikeOrUnlikeRequestModelImplCopyWith<_$LikeOrUnlikeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
