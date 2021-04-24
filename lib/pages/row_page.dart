import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  final widthHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Row(
          children: [
            Card(
              margin: EdgeInsets.symmetric(horizontal: 48),
              elevation: 14,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Image.asset(
                  'assets/images/2.png',
                  width: widthHeight,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Card(
              elevation: 14,
              child: Image.asset(
                'assets/images/2.png',
                width: widthHeight,
                height: widthHeight,
                fit: BoxFit.contain,
              ),
            )
            // Card(
            //   elevation: 14,
            //   child: Image.asset(
            //     'assets/images/2.png',
            //     width: widthHeight,
            //     height: widthHeight,
            //     fit: BoxFit.contain,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
