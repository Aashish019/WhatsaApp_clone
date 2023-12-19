import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/channels_list.dart';
import 'package:whatsapp_clone/widget/status_list.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          'Updates',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
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
        child: const Icon(Icons.camera_alt),
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "status",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.add))
            ],
          ),
          Container(
            height: 120,
            color: Colors.white,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: const StatusList(),
                  );
                }),
          ),
          Divider(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Channels",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.add),
              )
            ],
          ),
          Expanded(
            // height: 300,
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: const MyChannels(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
