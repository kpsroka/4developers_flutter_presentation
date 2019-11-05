import 'package:flutter/material.dart';

class DesktopCaveats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Desktop Shells — caveats',
          style: Theme.of(context).textTheme.display2,
        ),
        SizedBox(height: 32),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: 'Only macOS is '),
              TextSpan(
                  text: 'really',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(text: ' supported'),
            ],
          ),
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 8),
        Text(
          'no release mode or tooling support on Win/Linux',
          style: Theme.of(context).textTheme.subhead,
        ),
        SizedBox(height: 24),
        Text(
          'In developer preview stage',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 8),
        Text(
          'no API/ABI, no backward compatibility',
          style: Theme.of(context).textTheme.subhead,
        ),
        SizedBox(height: 24),
        Text(
          'No brownfield support (Add-to-App)',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'Fonts rely on the system',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 8),
        Text(
          'Bundle your own fonts for consistency',
          style: Theme.of(context).textTheme.subhead,
        ),
      ],
    );
  }
}
