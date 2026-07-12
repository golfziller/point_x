// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_get_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductGetAll _$ProductGetAllFromJson(Map<String, dynamic> json) =>
    _ProductGetAll(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: (json['limit'] as num).toInt(),
      skip: (json['skip'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$ProductGetAllToJson(_ProductGetAll instance) =>
    <String, dynamic>{
      'products': instance.products,
      'limit': instance.limit,
      'skip': instance.skip,
      'total': instance.total,
    };
