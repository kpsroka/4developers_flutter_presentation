import 'package:flutter/material.dart';

class TitleContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'The Many Faces of Flutter',
          style: Theme.of(context).textTheme.display2,
        ),
        SizedBox(height: 48),
        Text(
          'Krzysztof Sroka <kpsroka@kpsroka.dev>',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 32),
        Text(
          '4Developers Wrocław, 5 November 2019',
          style: Theme.of(context).textTheme.headline,
        ),
      ],
    );
  }
}
