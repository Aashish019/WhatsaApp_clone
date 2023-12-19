import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actionsIconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0.5,
          title: Text(
            'WhatsApp',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.green.shade400),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            // IconButton(
            //     onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              offset: const Offset(0, 40),
              elevation: 1,
              itemBuilder: (context) => [
                const PopupMenuItem(child: Text('New group')),
                const PopupMenuItem(child: Text('New broadcast')),
                const PopupMenuItem(child: Text('Linked devices')),
                const PopupMenuItem(child: Text('Starred messages')),
                const PopupMenuItem(child: Text('Payments')),
                const PopupMenuItem(child: Text('Settings'))
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: Colors.green,
          onPressed: () {},
          child: const Icon(Icons.add_comment_rounded),
        ),
        body: ListView.builder(
            itemCount: 20, //TODO : Add chat
            itemBuilder: ((context, index) => const ListTile(
                  leading: CircleAvatar(),
                  title: Text("name"),
                  subtitle: Text("chat text"),
                  trailing: Text("time"),
                ))));
  }
}
