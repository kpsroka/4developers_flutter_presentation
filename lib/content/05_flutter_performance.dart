import 'package:flutter/material.dart';

class FlutterPerformance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Flutter is…', style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        Text('…highly performant', style: Theme.of(context).textTheme.display1),
        SizedBox(height: 16),
        Text('able to render 120 frames per second', style: Theme.of(context).textTheme.title)
      ],
    );
  }
}
