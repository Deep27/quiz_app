import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _restartCb;

  Result(this._totalScore, this._restartCb);

  String get _resultPhrase {
    String _resultText = 'You\'ve broken it!';
    if (_totalScore < 4) {
      _resultText = 'What a looser!';
    } else if (_totalScore < 16) {
      _resultText = 'Try harder!';
    } else if (_totalScore < 46) {
      _resultText = 'That\s great!';
    } else if (_totalScore < 60) {
      _resultText = 'You\'ve almost did id! Just do it!';
    } else {
      _resultText = 'You\'re the God of quizes!';
    }
    return _resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            _resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('Restart the quiz'),
            textColor: Colors.blue,
            onPressed: _restartCb,
          ),
        ],
      ),
    );
  }
}
