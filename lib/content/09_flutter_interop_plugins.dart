import 'package:flutter/material.dart';
import 'package:multiplatform/code_snippet.dart';
import 'package:multiplatform/monospace_text.dart';

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
