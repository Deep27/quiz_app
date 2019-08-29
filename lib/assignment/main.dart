//1) Create a new Flutter App (in this project) and output an AppBar and some text below it
//2) Add a button which changes the text (to any other text of your choise)
//3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import 'text_control.dart';
import 'custom_text.dart';

class AssignmentApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AssignmentAppState();
  }
}

class _AssignmentAppState extends State<AssignmentApp> {
  String _text = "Press the button!";

  void _showNewText() {
    setState(() {
      final TextControl _textControl = TextControl();
      String _newText = _textControl.randomText;
      while (_newText == _text) {
        _newText = TextControl().randomText;
      }
      _text = _newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: CustomText(_text),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.info),
          onPressed: () => _showNewText(),
        ),
      ),
    );
  }
}
