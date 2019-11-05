import 'package:flutter/material.dart';
import 'package:multiplatform/code_snippet.dart';

class DesktopPlatforms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Support on desktop platforms',
          style: Theme.of(context).textTheme.display2,
        ),
        SizedBox(height: 32),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.display1,
          child: Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'macOS',
                  style: TextStyle(inherit: true, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Windows'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Linux'),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        CodeSnippet(
          text: '''
\$ flutter channel master
\$ flutter upgrade
\$ flutter config --enable-macos-desktop
\$ flutter create --macos''',
        ),
      ],
    );
  }
}
