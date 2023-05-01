// To parse this JSON data, do
//
//     final postedReels = postedReelsFromJson(jsonString);

import 'dart:convert';

List<PostedReels> postedReelsFromJson(String str) => List<PostedReels>.from(
    json.decode(str).map((x) => PostedReels.fromJson(x)));

String postedReelsToJson(List<PostedReels> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostedReels {
  PostedReels({
    required this.name,
    required this.likes,
    required this.imageUrl,
  });

  final String name;
  final int likes;
  final String imageUrl;

  PostedReels copyWith({
    required String name,
    required int likes,
    required String imageUrl,
  }) =>
      PostedReels(
        name: name ?? this.name,
        likes: likes ?? this.likes,
        imageUrl: imageUrl ?? this.imageUrl,
      );

  factory PostedReels.fromJson(Map<String, dynamic> json) => PostedReels(
        name: json["name"],
        likes: json["likes"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "likes": likes,
        "image_url": imageUrl,
      };
}
