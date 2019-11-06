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

class MobilePlatforms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Support on mobile-y platforms',
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
                  'Android',
                  style: TextStyle(inherit: true, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Android TV'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Wear OS'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'iOS',
                  style: TextStyle(inherit: true, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('WatchOS'),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        CodeSnippet(text: '\$ flutter create -i [objc|swift] -a [java|kotlin] my_project'),
      ],
    );
  }
}
