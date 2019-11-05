import 'package:flutter/material.dart';
import 'package:multiplatform/code_snippet.dart';

class MobilePlatforms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Support on mobile-y platforms',
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
                  'Android',
                  style: TextStyle(inherit: true, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Android TV'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Wear OS'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'iOS',
                  style: TextStyle(inherit: true, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('WatchOS'),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        CodeSnippet(text: '\$ flutter create -i [objc|swift] -a [java|kotlin] my_project'),
      ],
    );
  }
}
