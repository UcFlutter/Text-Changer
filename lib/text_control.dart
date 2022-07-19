import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function()? onChangeText;
  const TextControl({
    Key? key,
    required this.onChangeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onChangeText,
      child: const Text('Change Text'),
    );
  }
}
