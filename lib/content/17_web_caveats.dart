import 'package:flutter/material.dart';

class WebCaveats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Flutter Web — caveats',
          style: Theme.of(context).textTheme.display2,
        ),
        SizedBox(height: 32),
        Text(
          'No hot reload',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 8),
        Text(
          'but hot restart is available',
          style: Theme.of(context).textTheme.subhead,
        ),
        SizedBox(height: 24),
        Text(
          'No plugins',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'No file system access',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'Debugging only with Chrome',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 8),
        Text(
          'I am shocked — shocked — to find that this is going on in here!',
          style: Theme.of(context).textTheme.subhead.copyWith(fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
