import 'package:flutter/material.dart';

class FlutterDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Flutter is…', style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        Text('…written in Dart', style: Theme.of(context).textTheme.display1),
        SizedBox(height: 16),
        Text('and C, and C++', style: Theme.of(context).textTheme.title)
      ],
    );
  }
}
