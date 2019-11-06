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
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Page extends StatefulWidget {
  static PageRoute route(Page page) => MaterialPageRoute(builder: (_) => page);

  final String title;
  final String nextPage;
  final Widget body;

  Page({Key key, this.title, this.nextPage, this.body}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: (RawKeyEvent e) {
        NavigatorState navigator = Navigator.of(context);
        if (e.logicalKey == LogicalKeyboardKey.arrowRight && widget.nextPage != null) {
          navigator.pushNamed(widget.nextPage);
        } else if (e.logicalKey == LogicalKeyboardKey.arrowLeft &&
          navigator.canPop()) {
          navigator.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: _BackNavigationIcon(),
          actions: <Widget>[
            _ForwardNavigationIcon(widget.nextPage),
          ],
          centerTitle: true,
          title: Text(widget.title, textAlign: TextAlign.center),
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Card(
              elevation: 24,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: FittedBox(fit: BoxFit.contain, child: widget.body),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavigationIcon extends StatelessWidget {
  final VoidCallback Function(NavigatorState) onPressed;
  final IconData iconData;

  const _NavigationIcon({Key key, this.iconData, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigatorState navigatorState = Navigator.of(context);
    return IconButton(
      color: Theme.of(context).primaryColorLight,
      icon: Icon(iconData),
      onPressed: onPressed(navigatorState),
    );
  }
}

class _BackNavigationIcon extends _NavigationIcon {
  _BackNavigationIcon()
      : super(
          iconData: Icons.keyboard_arrow_left,
          onPressed: (NavigatorState navState) =>
              navState.canPop() ? () => navState.pop() : null,
        );
}

class _ForwardNavigationIcon extends _NavigationIcon {
  _ForwardNavigationIcon(String nextPageName)
      : super(
          iconData: Icons.keyboard_arrow_right,
          onPressed: (NavigatorState navState) => nextPageName == null
              ? null
              : () => navState.pushNamed(nextPageName),
        );
}
