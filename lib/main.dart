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

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multiplatform/content/01_title.dart';
import 'package:multiplatform/content/02_whoami.dart';
import 'package:multiplatform/content/03_flutter.dart';
import 'package:multiplatform/content/04_flutter_dart.dart';
import 'package:multiplatform/content/05_flutter_performance.dart';
import 'package:multiplatform/content/06_flutter_multiplatform.dart';
import 'package:multiplatform/content/07_flutter_architecture.dart';
import 'package:multiplatform/content/08_flutter_compilation_modes.dart';
import 'package:multiplatform/content/09_flutter_interop_plugins.dart';
import 'package:multiplatform/content/10_flutter_interop_ffi.dart';
import 'package:multiplatform/content/11_on_mobile.dart';
import 'package:multiplatform/content/12_on_desktop.dart';
import 'package:multiplatform/content/13_desktop_caveats.dart';
import 'package:multiplatform/content/15_on_web.dart';
import 'package:multiplatform/content/16_web_architecture.dart';
import 'package:multiplatform/content/17_web_caveats.dart';
import 'package:multiplatform/content/19_fuchsia.dart';
import 'package:multiplatform/content/20_conclusion.dart';
import 'package:multiplatform/content/xx_demo_time.dart';
import 'package:multiplatform/page.dart';
import 'package:multiplatform/theme.dart';

// Sets a platform override for desktop to avoid exceptions. See
// https://flutter.dev/desktop#target-platform-override for more info.
void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  _enablePlatformOverrideForDesktop();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myTheme,
      routes: {
        '/01': (_) => Page(title: 'First Page', nextPage: '/02', body: TitleContent()),
        '/02': (_) => Page(title: 'Who am I?', nextPage: '/03', body: WhoAmIScreen()),
        '/03': (_) => Page(title: 'What is Flutter?', nextPage: '/04', body: WhatIsFlutter()),
        '/04': (_) => Page(title: 'What is Flutter?', nextPage: '/05', body: FlutterDart()),
        '/05': (_) => Page(title: 'What is Flutter?', nextPage: '/06', body: FlutterPerformance()),
        '/06': (_) => Page(title: 'What is Flutter?', nextPage: '/07', body: FlutterMultiplatform()),
        '/07': (_) => Page(title: 'Flutter Architecture', nextPage: '/08', body: FlutterArchitectureOverview()),
        '/08': (_) => Page(title: 'Flutter Compilation Modes', nextPage: '/09', body: FlutterCompilationModes()),
        '/09': (_) => Page(title: 'Flutter Interop - Plugins', nextPage: '/10', body: FlutterPlugins()),
        '/10': (_) => Page(title: 'Flutter Interop - FFI', nextPage: '/11', body: FlutterFfi()),
        '/11': (_) => Page(title: 'Flutter on Mobile', nextPage: '/12', body: MobilePlatforms()),
        '/12': (_) => Page(title: 'Flutter on Desktop', nextPage: '/13', body: DesktopPlatforms()),
        '/13': (_) => Page(title: 'Flutter on Desktop - Caveats', nextPage: '/14', body: DesktopCaveats()),
        '/14': (_) => Page(title: 'Desktop demo', nextPage: '/15', body: DemoTime()),
        '/15': (_) => Page(title: 'Flutter on Web', nextPage: '/16', body: WebPlatform()),
        '/16': (_) => Page(title: 'Flutter on Web - Architecture', nextPage: '/17', body: WebArchitectureOverview()),
        '/17': (_) => Page(title: 'Flutter on Web - Caveats', nextPage: '/18', body: WebCaveats()),
        '/18': (_) => Page(title: 'Web demo', nextPage: '/19', body: DemoTime()),
        '/19': (_) => Page(title: 'Google Fuchsia', nextPage: '/20', body: Fuchsia()),
        '/20': (_) => Page(title: 'Key points', nextPage: null, body: Conclusion()),
      },
      initialRoute: '/01',
    );
  }
}
