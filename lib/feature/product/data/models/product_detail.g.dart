// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    _ProductDetail(
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductDetailToJson(_ProductDetail instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'rating': instance.rating,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
    };
