import 'package:flutter/material.dart';
import 'package:mechinetest_a/model/chatbubblemodel.dart';

class chatbubbledetail extends StatelessWidget {
  chatbubbledetail({Key? key, required this.data}) : super(key: key);
  Chatbubble data;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          data.isSend == true ? Alignment.centerLeft : Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 100, minHeight: 40),
        child: Card(
          color: data.isSend == true
              ? Color.fromARGB(255, 3, 26, 45)
              : Colors.grey,
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                data.message.toString(),
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
