import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first


  
  
class MovieModel {
  // int  id;
  String name;
  String synopsis;
  bool currentlyPlaying;
  String streamLink;
  String genre;
  String poster;
  String createdAt;
  String updatedAt;
  String publishedAt;
  String endDate;
  MovieModel({
    required this.name,
    required this.synopsis,
    required this.currentlyPlaying,
    required this.streamLink,
    required this.genre,
    required this.poster,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.endDate,
  });

  MovieModel copyWith({
    String? name,
    String? synopsis,
    bool? currentlyPlaying,
    String? streamLink,
    String? genre,
    String? poster,
    String? createdAt,
    String? updatedAt,
    String? publishedAt,
    String? endDate,
  }) {
    return MovieModel(
      name: name ?? this.name,
      synopsis: synopsis ?? this.synopsis,
      currentlyPlaying: currentlyPlaying ?? this.currentlyPlaying,
      streamLink: streamLink ?? this.streamLink,
      genre: genre ?? this.genre,
      poster: poster ?? this.poster,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
      endDate: endDate ?? this.endDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'synopsis': synopsis,
      'currentlyPlaying': currentlyPlaying,
      'streamLink': streamLink,
      'genre': genre,
      'poster': poster,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'publishedAt': publishedAt,
      'endDate': endDate,
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      name: map['name'] as String,
      synopsis: map['synopsis'] as String,
      currentlyPlaying: map['currently_playing'] as bool,
      streamLink: map['stream_link'] as String,
      genre: map['genre'] as String,
      poster: map['poster'] ??'assets/DnD.png',
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
      publishedAt: map['publishedAt'] as String,
      endDate: map['endDate'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) => MovieModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MovieModel(name: $name, synopsis: $synopsis, currentlyPlaying: $currentlyPlaying, streamLink: $streamLink, genre: $genre, poster: $poster, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, endDate: $endDate)';
  }

  @override
  bool operator ==(covariant MovieModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.synopsis == synopsis &&
      other.currentlyPlaying == currentlyPlaying &&
      other.streamLink == streamLink &&
      other.genre == genre &&
      other.poster == poster &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.publishedAt == publishedAt &&
      other.endDate == endDate;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      synopsis.hashCode ^
      currentlyPlaying.hashCode ^
      streamLink.hashCode ^
      genre.hashCode ^
      poster.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      publishedAt.hashCode ^
      endDate.hashCode;
  }
}
