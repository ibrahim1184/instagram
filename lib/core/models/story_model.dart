import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class StoryModel {
  String? name;
  String? profileImg;
  
  StoryModel({
    this.name,
    this.profileImg,
  });
   

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profileImg': profileImg,
    };
  }

  factory StoryModel.fromMap(Map<String, dynamic> map) {
    return StoryModel(
      name: map['name'] != null ? map['name'] as String : null,
      profileImg: map['profileImg'] != null ? map['profileImg'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoryModel.fromJson(String source) => StoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
