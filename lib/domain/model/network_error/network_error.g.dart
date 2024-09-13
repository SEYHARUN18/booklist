// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetworkErrorImpl _$$NetworkErrorImplFromJson(Map<String, dynamic> json) =>
    _$NetworkErrorImpl(
      title: json['title'] as String? ?? '',
      description: json['description'] as String,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      isVisible: json['isVisible'] as bool? ?? false,
    );

Map<String, dynamic> _$$NetworkErrorImplToJson(_$NetworkErrorImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'statusCode': instance.statusCode,
      'isVisible': instance.isVisible,
    };
