import 'package:flutter/material.dart';

class WhoAmIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset(
              'assets/xkcd.png',
              height: 320,
            ),
            Text('A Front-End developer',
                style: Theme.of(context).textTheme.title),
            Text('by Randall Munroe, https://xkcd.com/722/',
                style: Theme.of(context).textTheme.caption),
          ],
        ),
        SizedBox(
          width: 32,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Flutter Developer',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'since October 2018',
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height: 24,),
            Text(
              'Community organizer',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'mainly Flutter Wrocław & Flutter Europe',
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height: 24,),
            Text(
              'Technical Speaker',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              '& workshop facilitator',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      ],
    );
  }
}
