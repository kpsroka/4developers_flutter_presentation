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

class FlutterCompilationModes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Dart code gets compiled, not interpreted',
            style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('JIT', style: Theme.of(context).textTheme.display1),
                SizedBox(height: 8),
                Text('with hot reload & incrememtal optimization',
                    style: Theme.of(context).textTheme.title),
              ],
            ),
            SizedBox(
              width: 48,
            ),
            Column(
              children: <Widget>[
                Text('AOT', style: Theme.of(context).textTheme.display1),
                SizedBox(height: 8),
                Text('with tree-shaking and many checks ommited',
                    style: Theme.of(context).textTheme.title),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
