// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_get_all_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductGetAllResponse _$ProductGetAllResponseFromJson(
  Map<String, dynamic> json,
) => _ProductGetAllResponse(
  products: (json['products'] as List<dynamic>)
      .map((e) => ProductDetailResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  limit: (json['limit'] as num).toInt(),
  skip: (json['skip'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$ProductGetAllResponseToJson(
  _ProductGetAllResponse instance,
) => <String, dynamic>{
  'products': instance.products,
  'limit': instance.limit,
  'skip': instance.skip,
  'total': instance.total,
};
