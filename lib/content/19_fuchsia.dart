import 'package:flutter/material.dart';

class Fuchsia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Google Fuchsia',
          style: Theme.of(context).textTheme.display2,
        ),
        SizedBox(height: 32),
        Text(
          'Open-source OS developed by Google',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'Possible future replacement for Android/ChromeOS',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'Flutter as the default UI SDK of Fuchsia',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'https://fuchsia.dev/',
          style: Theme.of(context).textTheme.headline,
        ),
      ],
    );
  }
}
