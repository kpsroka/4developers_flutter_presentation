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

class FlutterFfi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Communication with platform',
            style: Theme.of(context).textTheme.display2),
        SizedBox(height: 32),
        CodeSnippet(
          text: '''
import 'dart:ffi';  // For FFI
import 'dart:io';   // For Platform.isX

final DynamicLibrary nativeAddLib =
  Platform.isAndroid
    ? DynamicLibrary.open("libnative_add.so")
    : DynamicLibrary.open("native_add.framework/native_add");

final int Function(int x, int y) nativeAdd =
  nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
    .asFunction();''',
        ),
        SizedBox(
          height: 16,
        ),
        Text(
            'https://flutter.dev/docs/development/platform-integration/c-interop'),
      ],
    );
  }
}
