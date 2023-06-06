// To parse this JSON data, do
//
//     final itemDetailModel = itemDetailModelFromJson(jsonString);

import 'dart:convert';

List<ItemDetailModel> itemDetailModelFromJson(String str) =>
    List<ItemDetailModel>.from(
        json.decode(str).map((x) => ItemDetailModel.fromJson(x)));

String itemDetailModelToJson(List<ItemDetailModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemDetailModel {
  final String id;
  final int key;
  final String text;
  final String storyText;
  final String image;
  final String textAudio;
  final String uid;
  final String storyAudio;
  final int v;

  ItemDetailModel({
    required this.id,
    required this.key,
    required this.text,
    required this.storyText,
    required this.image,
    required this.textAudio,
    required this.uid,
    required this.storyAudio,
    required this.v,
  });

  factory ItemDetailModel.fromJson(Map<String, dynamic> json) =>
      ItemDetailModel(
        id: json["_id"],
        key: json["key"],
        text: json["text"],
        storyText: json["storyText"],
        image: json["image"],
        textAudio: json["textAudio"],
        uid: json["uid"],
        storyAudio: json["storyAudio"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "key": key,
        "text": text,
        "storyText": storyText,
        "image": image,
        "textAudio": textAudio,
        "uid": uid,
        "storyAudio": storyAudio,
        "__v": v,
      };
}
