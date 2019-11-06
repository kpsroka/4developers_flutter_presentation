
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
