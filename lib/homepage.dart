import 'package:flutter/material.dart';
import 'package:mechinetest_a/chattile.dart';
import 'package:mechinetest_a/model/chatmodel.dart';
import 'package:mechinetest_a/profilepage.dart';

class homescreen extends StatelessWidget {
  homescreen({Key? key}) : super(key: key);
  List<Chatmodel> chat = [
    Chatmodel(
        name: "ameen",
        message: "where are you",
        avatar: "assets/images/a.jpg",
        isGroup: false,
        time: "10:00am"),
    Chatmodel(
        name: "fasal",
        message: "come ",
        avatar: "assets/images/b.jpg",
        isGroup: false,
        time: "10:30am"),
    Chatmodel(
        name: "musthafa",
        message: "do you go there",
        avatar: "assets/images/c.jpg",
        isGroup: false,
        time: "10:35am"),
    Chatmodel(
        name: "fahis",
        message: "come fast",
        avatar: "assets/images/d.jpg",
        isGroup: false,
        time: "10:45am"),
    Chatmodel(
        name: "dd",
        message: "please com fast",
        avatar: "assets/images/e.jpg",
        isGroup: false,
        time: "10:55am"),
    Chatmodel(
        name: "anshid",
        message: "iam here",
        avatar: "assets/images/f.jpg",
        isGroup: false,
        time: "11:00am"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        centerTitle: true,
        title: const Text(
          "Chats",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            "Edit",
            style: TextStyle(fontSize: 20.0, color: Colors.blue),
          ),
        ),
        actions: const [
          Icon(
            Icons.edit_calendar,
            color: Colors.blue,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chat.length,
        itemBuilder: (BuildContext context, int index) {
          return chattlie(
            data: chat[index],
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.blueGrey[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return profile();
                  }));
                },
                icon: Icon(Icons.account_circle, color: Colors.grey)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.call, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.message, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.contactless, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, color: Colors.grey))
          ],
        ),
      ),
    );
  }
}
