// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostModel {
  String? userImage;
  String? name;
  String? postImage;
  int? likeCount;
  String? explanation;

  PostModel({
    this.userImage,
    this.name,
    this.postImage,
    this.likeCount,
    this.explanation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userImage': userImage,
      'name': name,
      'postImage': postImage,
      'likeCount': likeCount,
      'explanation': explanation,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      userImage: map['userImage'] != null ? map['userImage'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      postImage: map['postImage'] != null ? map['postImage'] as String : null,
      likeCount: map['likeCount'] != null ? map['likeCount'] as int : null,
      explanation:
          map['explanation'] != null ? map['explanation'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
