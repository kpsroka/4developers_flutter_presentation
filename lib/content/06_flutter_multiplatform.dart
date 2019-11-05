import 'package:flutter/material.dart';

class FlutterMultiplatform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Flutter is…', style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        Text('…multiplatform', style: Theme.of(context).textTheme.display1),
        SizedBox(height: 16),
        Text('runs on Android, iOS, Windows, Mac, Linux, Google Fuchsia, and the web.', style: Theme.of(context).textTheme.title)
      ],
    );
  }
}
