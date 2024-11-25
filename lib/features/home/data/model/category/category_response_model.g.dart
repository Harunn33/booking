// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseModelImpl _$$CategoryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseModelImpl(
      category: (json['category'] as List<dynamic>)
          .map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryResponseModelImplToJson(
        _$CategoryResponseModelImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
    };

_$CategoryItemModelImpl _$$CategoryItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryItemModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$CategoryItemModelImplToJson(
        _$CategoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'isSelected': instance.isSelected,
    };
