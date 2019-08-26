import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function _callback;

  Answer(this._answer, this._callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answer),
        onPressed: _callback,
      ),
    );
  }
}
