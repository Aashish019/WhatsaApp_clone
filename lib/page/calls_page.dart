import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actionsIconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0.5,
          title: Text(
            'Calls',
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
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
                const PopupMenuItem(child: Text('Clear call log')),
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
          child: const Icon(Icons.add_call),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 20, //TODO : Add chat
                  itemBuilder: ((context, index) => InkWell(
                        onTap: () {},
                        child: const ListTile(
                          tileColor: Colors.white,
                          leading: CircleAvatar(),
                          title: Text("name"),
                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.arrow_outward_sharp,
                                size: 18,
                              ),
                              Text("date month, time"),
                            ],
                          ),
                          trailing: Icon(Icons.videocam_outlined),
                        ),
                      ))),
            ),
          ],
        ));
  }
}
