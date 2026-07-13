// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetailResponse _$ProductDetailResponseFromJson(
  Map<String, dynamic> json,
) => _ProductDetailResponse(
  title: json['title'] as String,
  id: (json['id'] as num).toInt(),
  rating: (json['rating'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  description: json['description'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ProductDetailResponseToJson(
  _ProductDetailResponse instance,
) => <String, dynamic>{
  'title': instance.title,
  'id': instance.id,
  'rating': instance.rating,
  'price': instance.price,
  'description': instance.description,
  'images': instance.images,
};
