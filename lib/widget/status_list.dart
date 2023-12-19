import 'package:flutter/material.dart';

class StatusList extends StatelessWidget {
  const StatusList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
      ),
    );
  }
}
