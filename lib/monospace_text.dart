import 'package:flutter/material.dart';

class MonospaceText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const MonospaceText(this.text, {Key key, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle monospaceCode = Theme.of(context)
        .textTheme
        .title
        .copyWith(fontFamily: 'monospace', color: Colors.grey.shade300);

    return Text(text, style: monospaceCode.merge(style));
  }
}