import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  bool _isLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isLight ? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: _isLight ? Colors.white : Colors.grey[800],
        title: Text(
          'Calculadora',
          style: TextStyle(color: _isLight ? Colors.black : Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'Hola mundo',
          style: TextStyle(color: _isLight ? Colors.black : Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _isLight = !_isLight;
          setState(() {});
        },
        backgroundColor: _isLight ? Colors.white : Colors.grey[800],
      ),
    );
  }
}
