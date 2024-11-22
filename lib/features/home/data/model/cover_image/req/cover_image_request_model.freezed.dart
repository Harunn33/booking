// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover_image_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoverImageRequestModel _$CoverImageRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CoverImageRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CoverImageRequestModel {
  String get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverImageRequestModelCopyWith<CoverImageRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverImageRequestModelCopyWith<$Res> {
  factory $CoverImageRequestModelCopyWith(CoverImageRequestModel value,
          $Res Function(CoverImageRequestModel) then) =
      _$CoverImageRequestModelCopyWithImpl<$Res, CoverImageRequestModel>;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class _$CoverImageRequestModelCopyWithImpl<$Res,
        $Val extends CoverImageRequestModel>
    implements $CoverImageRequestModelCopyWith<$Res> {
  _$CoverImageRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoverImageRequestModelImplCopyWith<$Res>
    implements $CoverImageRequestModelCopyWith<$Res> {
  factory _$$CoverImageRequestModelImplCopyWith(
          _$CoverImageRequestModelImpl value,
          $Res Function(_$CoverImageRequestModelImpl) then) =
      __$$CoverImageRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class __$$CoverImageRequestModelImplCopyWithImpl<$Res>
    extends _$CoverImageRequestModelCopyWithImpl<$Res,
        _$CoverImageRequestModelImpl>
    implements _$$CoverImageRequestModelImplCopyWith<$Res> {
  __$$CoverImageRequestModelImplCopyWithImpl(
      _$CoverImageRequestModelImpl _value,
      $Res Function(_$CoverImageRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_$CoverImageRequestModelImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverImageRequestModelImpl implements _CoverImageRequestModel {
  _$CoverImageRequestModelImpl({required this.fileName});

  factory _$CoverImageRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverImageRequestModelImplFromJson(json);

  @override
  final String fileName;

  @override
  String toString() {
    return 'CoverImageRequestModel(fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverImageRequestModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverImageRequestModelImplCopyWith<_$CoverImageRequestModelImpl>
      get copyWith => __$$CoverImageRequestModelImplCopyWithImpl<
          _$CoverImageRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverImageRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CoverImageRequestModel implements CoverImageRequestModel {
  factory _CoverImageRequestModel({required final String fileName}) =
      _$CoverImageRequestModelImpl;

  factory _CoverImageRequestModel.fromJson(Map<String, dynamic> json) =
      _$CoverImageRequestModelImpl.fromJson;

  @override
  String get fileName;
  @override
  @JsonKey(ignore: true)
  _$$CoverImageRequestModelImplCopyWith<_$CoverImageRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
