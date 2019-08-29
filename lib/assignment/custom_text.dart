import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String _text;

  CustomText(this._text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _text,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
