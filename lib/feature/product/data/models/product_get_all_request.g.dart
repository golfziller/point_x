// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_get_all_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductGetAllRequest _$ProductGetAllRequestFromJson(
  Map<String, dynamic> json,
) => _ProductGetAllRequest(
  order: json['order'] as String? ?? "asc",
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  skip: (json['skip'] as num).toInt(),
  sortBy: json['sortBy'] as String? ?? 'title',
  select:
      json['select'] as String? ?? "title,price,description,rating,images,id",
  q: json['q'] as String? ?? '',
);

Map<String, dynamic> _$ProductGetAllRequestToJson(
  _ProductGetAllRequest instance,
) => <String, dynamic>{
  'order': instance.order,
  'limit': instance.limit,
  'skip': instance.skip,
  'sortBy': instance.sortBy,
  'select': instance.select,
  'q': instance.q,
};
