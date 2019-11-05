import 'package:flutter/material.dart';
import 'package:multiplatform/monospace_text.dart';

class CodeSnippet extends StatelessWidget {
  final String text;

  const CodeSnippet({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade900,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MonospaceText(text),
      ),
    );
  }
}
