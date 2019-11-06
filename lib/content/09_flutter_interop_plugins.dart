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

class FlutterPlugins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Communication with platform',
            style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        CodeSnippet(
          text: '''
// PlatformChannel sample

Future<void> _getBatteryLevel() async {
  String batteryLevel;
  try {
   final int result = await platform.invokeMethod("getBatteryLevel");
   batteryLevel = "Battery level at \$result % .";
  } on PlatformException catch (e) {
    batteryLevel = "Failed to get battery level: \'\${e.message}\'.";
  }

  setState(() {
    _batteryLevel = batteryLevel;
  });
}''',
        ),
        SizedBox(
          height: 16,
        ),
        Text(
            'https://flutter.dev/docs/development/platform-integration/platform-channels'),
      ],
    );
  }
}
