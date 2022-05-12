import 'package:flutter/material.dart';
import 'package:mechinetest_a/chatbubble.dart';
// import 'package:mechinetest_a/model/chatbubble.dart';
import 'package:mechinetest_a/model/chatbubblemodel.dart';

class chatdetail extends StatelessWidget {
  chatdetail({Key? key}) : super(key: key);
  List<Chatbubble> messages = [
    Chatbubble(message: "the", isSend: true, date: "date"),
    Chatbubble(message: "okey", isSend: true, date: "date"),
    Chatbubble(message: "sticker", isSend: true, date: "date"),
    Chatbubble(message: "assets/images/tex.jpg", isSend: true, date: "date"),
    Chatbubble(message: "iam son", isSend: false, date: "date"),
    Chatbubble(message: "hi the", isSend: false, date: "date"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text('chat'),
          widthFactor: 6.0,
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return chatbubbledetail(
                  data: messages[index],
                );
              },
              itemCount: messages.length,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Row(
                      children: [
                        const SizedBox(width: 10),
                        const Icon(Icons.image),
                        const SizedBox(width: 10),
                        const Icon(Icons.emoji_emotions)
                      ],
                    ),
                    suffixIcon: const Icon(Icons.send),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
