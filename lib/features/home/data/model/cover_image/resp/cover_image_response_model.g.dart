// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_image_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoverImageResponseModelImpl _$$CoverImageResponseModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$CoverImageResponseModelImpl(
      actionProductImage: ActionProductImage.fromJson(
        json['action_product_image'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$CoverImageResponseModelImplToJson(
  _$CoverImageResponseModelImpl instance,
) =>
    <String, dynamic>{
      'action_product_image': instance.actionProductImage,
    };

_$ActionProductImageImpl _$$ActionProductImageImplFromJson(
  Map<String, dynamic> json,
) =>
    _$ActionProductImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ActionProductImageImplToJson(
  _$ActionProductImageImpl instance,
) =>
    <String, dynamic>{
      'url': instance.url,
    };
