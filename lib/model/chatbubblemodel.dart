// To parse this JSON data, do
//
//     final chatbubble = chatbubbleFromJson(jsonString);

import 'dart:convert';

Chatbubble chatbubbleFromJson(String str) =>
    Chatbubble.fromJson(json.decode(str));

String chatbubbleToJson(Chatbubble data) => json.encode(data.toJson());

class Chatbubble {
  Chatbubble({
    required this.message,
    required this.isSend,
    required this.date,
  });

  String message;
  bool isSend;
  String date;

  factory Chatbubble.fromJson(Map<String, dynamic> json) => Chatbubble(
        message: json["message"],
        isSend: json["is send"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "is send": isSend,
        "date": date,
      };
}
