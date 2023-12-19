import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/page/individual_pages.dart';

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
            itemBuilder: ((context, index) => InkWell(
                  onTap: () => Get.to(() => const individualPage()),
                  child: const ListTile(
                    tileColor: Colors.white,
                    leading: CircleAvatar(),
                    title: Text(
                      "name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.done_all,
                          size: 18,
                        ),
                        Text("chat text"),
                      ],
                    ),
                    trailing: Text("00;00"),
                  ),
                ))));
  }
}
