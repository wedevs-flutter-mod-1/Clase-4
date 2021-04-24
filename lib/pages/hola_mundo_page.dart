import 'package:flutter/material.dart';

class HolaMundoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hola mundo')),
      body: Center(
        child: Card(
          elevation: 12,
          shadowColor: Colors.red,
          margin: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Text(
              'Hola mundo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
