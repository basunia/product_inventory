// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) => MovieDetail(
      imdbId: json['id'] as int,
      poster: json['image'] as String,
      title: json['title'] as String,
      genre: json['category'] as String,
      plot: json['description'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieDetailToJson(MovieDetail instance) =>
    <String, dynamic>{
      'id': instance.imdbId,
      'image': instance.poster,
      'title': instance.title,
      'price': instance.price,
      'category': instance.genre,
      'description': instance.plot,
    };
