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
