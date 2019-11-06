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
