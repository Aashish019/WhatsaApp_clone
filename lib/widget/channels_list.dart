import 'package:flutter/material.dart';

class MyChannels extends StatelessWidget {
  const MyChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Container(
        height: 150,
        color: Colors.white,
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(),
                ),
                Text(
                  "Channel name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: 'highlighted text',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                        text: ' text with detail in the channel ',
                        style: TextStyle(color: Colors.grey)),
                  ])),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
