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

class MonospaceText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const MonospaceText(this.text, {Key key, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle monospaceCode = Theme.of(context)
        .textTheme
        .title
        .copyWith(fontFamily: 'monospace', color: Colors.grey.shade300);

    return Text(text, style: monospaceCode.merge(style));
  }
}