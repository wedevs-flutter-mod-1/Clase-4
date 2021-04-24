import 'package:flutter/material.dart';

import 'pages/col_page.dart';
import 'pages/hola_mundo_page.dart';
import 'pages/login_page.dart';
import 'pages/row_page.dart';
import 'pages/stack_page.dart';

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
      home: RowPage(),
    );
  }
}
