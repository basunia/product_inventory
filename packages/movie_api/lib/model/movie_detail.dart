import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// part 'movie_detail.freezed.dart';
part 'movie_detail.g.dart';

// @freezed
@JsonSerializable()
@entity
class MovieDetail {
  MovieDetail(
      {this.id,
      required this.imdbId,
      required this.poster,
      required this.title,
      // required this.year,
      // required this.released,
      required this.genre,
      required this.plot,
      required this.price
      // required this.director,
      // required this.imdbRating,
      });

  @PrimaryKey(autoGenerate: true)
  @JsonKey(ignore: true)
  int? id;
  @JsonKey(name: 'id')
  int imdbId;
  @JsonKey(name: 'image')
  String poster;
  @JsonKey(name: 'title')
  String title;
  double price;
  @JsonKey(name: 'category')
  String genre;
  @JsonKey(name: 'description')
  String plot;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);

  @override
  String toString() {
    return 'id $id, Tittle $title, Genre $genre, Plot $plot';
  }
}
