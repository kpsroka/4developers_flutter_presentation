import 'package:flutter/material.dart';

class FlutterArchitectureOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Flutter is like an onion', style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        Image.asset('assets/flutter_architecture_overview.png'),
        SizedBox(height: 8),
        Text('it has layers', style: Theme.of(context).textTheme.title),
      ],
    );
  }
}
