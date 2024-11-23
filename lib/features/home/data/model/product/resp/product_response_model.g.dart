// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseModelImpl _$$ProductResponseModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$ProductResponseModelImpl(
      product: (json['product'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductResponseModelImplToJson(
  _$ProductResponseModelImpl instance,
) =>
    <String, dynamic>{
      'product': instance.product,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      author: json['author'] as String,
      cover: json['cover'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      description: json['description'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      sales: (json['sales'] as num).toInt(),
      slug: json['slug'] as String,
      likesAggregate: LikesAggregate.fromJson(
        json['likes_aggregate'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'cover': instance.cover,
      'created_at': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'sales': instance.sales,
      'slug': instance.slug,
      'likes_aggregate': instance.likesAggregate,
    };

_$LikesAggregateImpl _$$LikesAggregateImplFromJson(Map<String, dynamic> json) =>
    _$LikesAggregateImpl(
      aggregate: Aggregate.fromJson(json['aggregate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LikesAggregateImplToJson(
  _$LikesAggregateImpl instance,
) =>
    <String, dynamic>{
      'aggregate': instance.aggregate,
    };

_$AggregateImpl _$$AggregateImplFromJson(Map<String, dynamic> json) =>
    _$AggregateImpl(
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$AggregateImplToJson(_$AggregateImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
