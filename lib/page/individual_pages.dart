import 'package:flutter/material.dart';
import 'package:get/get.dart';

class individualPage extends StatelessWidget {
  const individualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
        title: const Text(
          "Name",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.videocam_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
          // IconButton(
          //     onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            offset: const Offset(0, 40),
            elevation: 1,
            itemBuilder: (context) => [
              const PopupMenuItem(child: Text('View contact')),
              const PopupMenuItem(child: Text('Media, links and docs')),
              const PopupMenuItem(child: Text('Search')),
              const PopupMenuItem(child: Text('Mute notifications')),
              const PopupMenuItem(child: Text('Disappering messages')),
              const PopupMenuItem(child: Text('Wallpaper')),
              const PopupMenuItem(child: Text('More')),
            ],
          )
        ],
      ),
    );
  }
}
