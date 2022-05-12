// To parse this JSON data, do
//
//     final chatmodel = chatmodelFromJson(jsonString);

import 'dart:convert';

Chatmodel chatmodelFromJson(String str) => Chatmodel.fromJson(json.decode(str));

String chatmodelToJson(Chatmodel data) => json.encode(data.toJson());

class Chatmodel {
  Chatmodel({
    required this.name,
    required this.message,
    required this.avatar,
    required this.isGroup,
    required this.time,
  });

  String name;
  String message;
  String avatar;
  bool isGroup;
  String time;

  factory Chatmodel.fromJson(Map<String, dynamic> json) => Chatmodel(
        name: json["name"],
        message: json["message"],
        avatar: json["avatar"],
        isGroup: json["is group"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "message": message,
        "avatar": avatar,
        "is group": isGroup,
        "time": time,
      };
}
