// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  String postUrl;
  String? comment;

  Post({
    required this.postUrl,
    this.comment,
  });

  Post copyWith({
    String? postUrl,
  }) =>
      Post(
        postUrl: postUrl ?? this.postUrl,
      );

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        postUrl: json["postURL"],
      );

  Map<String, dynamic> toJson() => {
        "postURL": postUrl,
        "comment": comment,
      };
}
