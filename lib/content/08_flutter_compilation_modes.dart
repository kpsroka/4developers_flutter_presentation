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
