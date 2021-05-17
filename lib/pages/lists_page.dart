import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listas')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        padding: EdgeInsets.only(top: 32, bottom: 16),
        child: Row(
          children: [
            Card(
              margin: EdgeInsets.symmetric(horizontal: 48),
              elevation: 14,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Image.asset(
                  'assets/images/1.png',
                  width: 130,
                  height: 130,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 48),
              elevation: 14,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Image.asset(
                  'assets/images/2.png',
                  width: 130,
                  height: 130,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 48),
              elevation: 14,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Image.asset(
                  'assets/images/3.png',
                  width: 130,
                  height: 130,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 48),
              elevation: 14,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Image.asset(
                  'assets/images/4.png',
                  width: 130,
                  height: 130,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
