import 'package:flutter/material.dart';
import 'package:multiplatform/code_snippet.dart';

class WebPlatform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Support on web',
          style: Theme.of(context).textTheme.display2,
        ),
        SizedBox(height: 32),
        CodeSnippet(
          text: '''
\$ flutter channel master
\$ flutter upgrade
\$ flutter config --enable-web
\$ flutter create --web''',
        ),
      ],
    );
  }
}
