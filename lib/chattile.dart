import 'package:flutter/material.dart';
import 'package:mechinetest_a/chatdetail.dart';
import 'package:mechinetest_a/model/chatmodel.dart';

class chattlie extends StatelessWidget {
  chattlie({Key? key, required this.data}) : super(key: key);
  Chatmodel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return chatdetail();
              },
            ));
          },
          leading: CircleAvatar(
            backgroundImage: AssetImage(data.avatar.toString()),
          ),
          title: Text(data.name.toString()),
          subtitle: Text(data.message.toString()),
          trailing: Text(data.time.toString()),
        ),
        Divider()
      ],
    );
  }
}
