import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// part 'movie.freezed.dart';
part 'movie.g.dart';

@entity
@JsonSerializable()
class Movie {
  Movie({
    this.id,
    required this.title,
    required this.year,
    required this.imdbId,
    required this.poster,
  });

  @PrimaryKey(autoGenerate: true)
  @JsonKey(ignore: true)
  int? id;
  @JsonKey(name: 'title')
  String title;
  //Unused [feeding dummy data]
  @JsonKey(name: 'category')
  String year;

  //product id
  @JsonKey(name: 'id')
  int imdbId;
  @JsonKey(name: 'image')
  String poster;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  String toString() {
    return 'id $id, Title $title, imdbId $imdbId';
  }
}
