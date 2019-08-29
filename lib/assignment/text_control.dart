import 'dart:math';

class TextControl {
  static const List<String> _TEXTS = const [
    'This is an assignment app text',
    'This is another assignment app text',
    'And yet another one'
  ];

  String get randomText => _TEXTS[Random().nextInt(_TEXTS.length)];
}
