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
import 'package:multiplatform/code_snippet.dart';

class DesktopPlatforms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Support on desktop platforms',
          style: Theme.of(context).textTheme.display2,
        ),
        SizedBox(height: 32),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.display1,
          child: Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'macOS',
                  style: TextStyle(inherit: true, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Windows'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Linux'),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        CodeSnippet(
          text: '''
\$ flutter channel master
\$ flutter upgrade
\$ flutter config --enable-macos-desktop
\$ flutter create --macos''',
        ),
      ],
    );
  }
}
