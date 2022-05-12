import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 6, 35, 59),
        body: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/a.jpg'),
                  radius: 80,
                ),
                const Text(
                  "Designer name",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Love with UI/GUI/UX",
                  style: TextStyle(color: Colors.orange),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListBody(
                  children: [
                    const Divider(color: Colors.white),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                          leading: const Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          title: const Text(
                            "Mail Inbox",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Container(
                            child: const Center(child: Text("5")),
                            color: Colors.white,
                            width: 25.0,
                            height: 20.0,
                          )),
                    ),
                    const Divider(color: Colors.white),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                          leading: const Icon(
                            Icons.people,
                            color: Colors.grey,
                          ),
                          title: const Text(
                            "Friends",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Container(
                            child: const Center(child: Text("25")),
                            color: Colors.white,
                            width: 25.0,
                            height: 20.0,
                          )),
                    ),
                    const Divider(color: Colors.white),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                          leading: const Icon(
                            Icons.telegram,
                            color: Colors.grey,
                          ),
                          title: const Text(
                            "Invites",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Container(
                            child: const Center(child: Text("1")),
                            color: Colors.white,
                            width: 25.0,
                            height: 20.0,
                          )),
                    ),
                    const Divider(color: Colors.white),
                    InkWell(
                      onTap: () {},
                      child: const ListTile(
                        leading: Icon(
                          Icons.check_circle,
                          color: Colors.grey,
                        ),
                        title: Text(
                          "Bookmarks",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Divider(color: Colors.white),
                    InkWell(
                      onTap: () {},
                      child: const ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        title: Text(
                          "Account settings",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Divider(color: Colors.white),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.publish_rounded),
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
