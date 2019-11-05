import 'package:flutter/material.dart';
import 'package:multiplatform/code_snippet.dart';
import 'package:multiplatform/monospace_text.dart';

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
