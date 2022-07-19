import 'package:flutter/material.dart';
import 'package:task1/text_output.dart';
import 'package:task1/text_control.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _textIndex = 0;
  final _texts = [
    'Hey There',
    'How Are You',
    'What\'s Up',
    'Cool',
  ];

  void _onchangeText() {
    setState(() {
      _textIndex++;
    });
  }

  void _restart() {
    setState(() {
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Task One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextOutput(
              texts: _texts[_textIndex],
            ),
            TextControl(
              onChangeText: _texts.indexOf(_texts.last) != _textIndex
                  ? _onchangeText
                  : _restart,
            ),
          ],
        ),
      ),
    ));
  }
}
