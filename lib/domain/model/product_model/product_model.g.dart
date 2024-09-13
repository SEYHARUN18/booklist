// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      title: json['title'] as String? ?? '',
      description: json['description'] as String,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      isVisible: json['isVisible'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'statusCode': instance.statusCode,
      'isVisible': instance.isVisible,
    };
