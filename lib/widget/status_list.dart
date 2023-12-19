import 'package:flutter/material.dart';

class StatusList extends StatelessWidget {
  const StatusList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                    width: 2, color: Colors.green, style: BorderStyle.solid)),
          ),
          SizedBox(
            height: 5,
          ),
          Text("name")
        ],
      ),
    );
  }
}
