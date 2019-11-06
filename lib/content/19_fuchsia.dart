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

class Fuchsia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Google Fuchsia',
          style: Theme.of(context).textTheme.display2,
        ),
        SizedBox(height: 32),
        Text(
          'Open-source OS developed by Google',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'Possible future replacement for Android/ChromeOS',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'Flutter as the default UI SDK of Fuchsia',
          style: Theme.of(context).textTheme.display1,
        ),
        SizedBox(height: 24),
        Text(
          'https://fuchsia.dev/',
          style: Theme.of(context).textTheme.headline,
        ),
      ],
    );
  }
}
