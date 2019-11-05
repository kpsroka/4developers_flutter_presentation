import 'package:flutter/material.dart';

class WhatIsFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('What is Flutter?', style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        Text(
          '"UI software development kit created by Google" — Wikipedia',
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(fontStyle: FontStyle.italic)
        ),
        SizedBox(height: 32),
        Text('Rought timeline', style: Theme.of(context).textTheme.display1),
        SizedBox(height: 16),
        Text('Announced in May 2015', style: Theme.of(context).textTheme.headline),
        SizedBox(height: 8),
        Text('First beta in February 2018', style: Theme.of(context).textTheme.headline),
        SizedBox(height: 8),
        Text('1.0 in December 2018', style: Theme.of(context).textTheme.headline),
        SizedBox(height: 8),
        Text('Current stable at 1.9.1', style: Theme.of(context).textTheme.headline),
      ],
    );
  }
}
