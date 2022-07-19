import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String texts;

  const TextOutput({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      texts,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
