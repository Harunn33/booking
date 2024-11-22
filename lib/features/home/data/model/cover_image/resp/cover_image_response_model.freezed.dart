// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover_image_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoverImageResponseModel _$CoverImageResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CoverImageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CoverImageResponseModel {
  @JsonKey(name: 'action_product_image')
  ActionProductImage get actionProductImage =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverImageResponseModelCopyWith<CoverImageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverImageResponseModelCopyWith<$Res> {
  factory $CoverImageResponseModelCopyWith(CoverImageResponseModel value,
          $Res Function(CoverImageResponseModel) then) =
      _$CoverImageResponseModelCopyWithImpl<$Res, CoverImageResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'action_product_image')
      ActionProductImage actionProductImage});

  $ActionProductImageCopyWith<$Res> get actionProductImage;
}

/// @nodoc
class _$CoverImageResponseModelCopyWithImpl<$Res,
        $Val extends CoverImageResponseModel>
    implements $CoverImageResponseModelCopyWith<$Res> {
  _$CoverImageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionProductImage = null,
  }) {
    return _then(_value.copyWith(
      actionProductImage: null == actionProductImage
          ? _value.actionProductImage
          : actionProductImage // ignore: cast_nullable_to_non_nullable
              as ActionProductImage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionProductImageCopyWith<$Res> get actionProductImage {
    return $ActionProductImageCopyWith<$Res>(_value.actionProductImage,
        (value) {
      return _then(_value.copyWith(actionProductImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverImageResponseModelImplCopyWith<$Res>
    implements $CoverImageResponseModelCopyWith<$Res> {
  factory _$$CoverImageResponseModelImplCopyWith(
          _$CoverImageResponseModelImpl value,
          $Res Function(_$CoverImageResponseModelImpl) then) =
      __$$CoverImageResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'action_product_image')
      ActionProductImage actionProductImage});

  @override
  $ActionProductImageCopyWith<$Res> get actionProductImage;
}

/// @nodoc
class __$$CoverImageResponseModelImplCopyWithImpl<$Res>
    extends _$CoverImageResponseModelCopyWithImpl<$Res,
        _$CoverImageResponseModelImpl>
    implements _$$CoverImageResponseModelImplCopyWith<$Res> {
  __$$CoverImageResponseModelImplCopyWithImpl(
      _$CoverImageResponseModelImpl _value,
      $Res Function(_$CoverImageResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionProductImage = null,
  }) {
    return _then(_$CoverImageResponseModelImpl(
      actionProductImage: null == actionProductImage
          ? _value.actionProductImage
          : actionProductImage // ignore: cast_nullable_to_non_nullable
              as ActionProductImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverImageResponseModelImpl implements _CoverImageResponseModel {
  _$CoverImageResponseModelImpl(
      {@JsonKey(name: 'action_product_image')
      required this.actionProductImage});

  factory _$CoverImageResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverImageResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'action_product_image')
  final ActionProductImage actionProductImage;

  @override
  String toString() {
    return 'CoverImageResponseModel(actionProductImage: $actionProductImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverImageResponseModelImpl &&
            (identical(other.actionProductImage, actionProductImage) ||
                other.actionProductImage == actionProductImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actionProductImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverImageResponseModelImplCopyWith<_$CoverImageResponseModelImpl>
      get copyWith => __$$CoverImageResponseModelImplCopyWithImpl<
          _$CoverImageResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverImageResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CoverImageResponseModel implements CoverImageResponseModel {
  factory _CoverImageResponseModel(
          {@JsonKey(name: 'action_product_image')
          required final ActionProductImage actionProductImage}) =
      _$CoverImageResponseModelImpl;

  factory _CoverImageResponseModel.fromJson(Map<String, dynamic> json) =
      _$CoverImageResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'action_product_image')
  ActionProductImage get actionProductImage;
  @override
  @JsonKey(ignore: true)
  _$$CoverImageResponseModelImplCopyWith<_$CoverImageResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActionProductImage _$ActionProductImageFromJson(Map<String, dynamic> json) {
  return _ActionProductImage.fromJson(json);
}

/// @nodoc
mixin _$ActionProductImage {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionProductImageCopyWith<ActionProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionProductImageCopyWith<$Res> {
  factory $ActionProductImageCopyWith(
          ActionProductImage value, $Res Function(ActionProductImage) then) =
      _$ActionProductImageCopyWithImpl<$Res, ActionProductImage>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$ActionProductImageCopyWithImpl<$Res, $Val extends ActionProductImage>
    implements $ActionProductImageCopyWith<$Res> {
  _$ActionProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionProductImageImplCopyWith<$Res>
    implements $ActionProductImageCopyWith<$Res> {
  factory _$$ActionProductImageImplCopyWith(_$ActionProductImageImpl value,
          $Res Function(_$ActionProductImageImpl) then) =
      __$$ActionProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$ActionProductImageImplCopyWithImpl<$Res>
    extends _$ActionProductImageCopyWithImpl<$Res, _$ActionProductImageImpl>
    implements _$$ActionProductImageImplCopyWith<$Res> {
  __$$ActionProductImageImplCopyWithImpl(_$ActionProductImageImpl _value,
      $Res Function(_$ActionProductImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ActionProductImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionProductImageImpl implements _ActionProductImage {
  _$ActionProductImageImpl({required this.url});

  factory _$ActionProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionProductImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'ActionProductImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionProductImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionProductImageImplCopyWith<_$ActionProductImageImpl> get copyWith =>
      __$$ActionProductImageImplCopyWithImpl<_$ActionProductImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionProductImageImplToJson(
      this,
    );
  }
}

abstract class _ActionProductImage implements ActionProductImage {
  factory _ActionProductImage({required final String url}) =
      _$ActionProductImageImpl;

  factory _ActionProductImage.fromJson(Map<String, dynamic> json) =
      _$ActionProductImageImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ActionProductImageImplCopyWith<_$ActionProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
