import 'package:flutter/material.dart';

class Conclusion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Main takeaways',
          style: Theme.of(context).textTheme.display3,
        ),
        SizedBox(height: 32),
        Text(
          'You are awesome',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 8),
        Text(
          'Though not exactly as mature as with native SDKs yet',
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(height: 24),
        Text(
          'Has varying support for other platforms',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 8),
        Text(
          'Not nearly as integrated as the mobile',
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(height: 24),
        Text(
          "You still need knowledge of specific platforms",
          style: Theme.of(context).textTheme.headline,
        ),SizedBox(height: 8),
        Text(
          'But you avoid duplication of lots of code',
          style: Theme.of(context).textTheme.title,
        ),
      ],
    );
  }
}