import 'package:flutter/material.dart';
class appBar extends StatelessWidget {
  const appBar({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text(
          "Good Morning",
          style: TextStyle(color: Colors.white,fontSize:25),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.all(width / 20),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ]);
  }
}
