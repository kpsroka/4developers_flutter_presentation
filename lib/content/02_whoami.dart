//  Copyright 2019 Krzysztof Sroka <kpsroka@kpsroka.dev>
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

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
