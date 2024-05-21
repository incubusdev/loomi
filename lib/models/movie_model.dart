import 'dart:convert';


class MovieModel {
  String type;
  String title;
  String description;
  String image;
  MovieModel({
    required this.type,
    required this.title,
    required this.description,
    required this.image,
  });

  MovieModel copyWith({
    String? type,
    String? title,
    String? description,
    String? image,
  }) {
    return MovieModel(
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'title': title,
      'description': description,
      'image': image,
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      type: map['type'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) => MovieModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MovieModel(type: $type, title: $title, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MovieModel &&
      other.type == type &&
      other.title == title &&
      other.description == description &&
      other.image == image;
  }

  @override
  int get hashCode {
    return type.hashCode ^
      title.hashCode ^
      description.hashCode ^
      image.hashCode;
  }
}
