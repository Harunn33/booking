// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_or_unlike_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeOrUnlikeRequestModelImpl _$$LikeOrUnlikeRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LikeOrUnlikeRequestModelImpl(
      userId: (json['user_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
    );

Map<String, dynamic> _$$LikeOrUnlikeRequestModelImplToJson(
        _$LikeOrUnlikeRequestModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'product_id': instance.productId,
    };
