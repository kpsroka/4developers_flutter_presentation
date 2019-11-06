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
          'Mobile support is superb',
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