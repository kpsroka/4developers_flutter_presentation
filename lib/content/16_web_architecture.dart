import 'package:flutter/material.dart';

class WebArchitectureOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Flutter Web is less like an onion', style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        Image.asset('assets/flutter_web_architecture_overview.png'),
      ],
    );
  }
}
