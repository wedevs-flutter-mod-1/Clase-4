import 'package:flutter/material.dart';
import 'package:init/pages/theme_page.dart';

import 'pages/col_page.dart';
import 'pages/hola_mundo_page.dart';
import 'pages/lists2_page.dart';
import 'pages/lists_page.dart';
import 'pages/login_page.dart';
import 'pages/row_page.dart';
import 'pages/stack_page.dart';
import 'pages/state_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'init',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: List2Page(),
    );
  }
}
