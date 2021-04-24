import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(width: 300, height: 300, color: Colors.red),
          // Container(width: 200, height: 200, color: Colors.yellow),
          // Container(width: 100, height: 100, color: Colors.green),
          //
          //
          // Positioned(
          //   top: 24,
          //   left: 12,
          //   child: Card(
          //     elevation: 14,
          //     child: Image.asset(
          //       'assets/images/2.png',
          //       width: 80,
          //       fit: BoxFit.contain,
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment.centerRight,
            child: Card(
              elevation: 14,
              child: Image.asset(
                'assets/images/2.png',
                width: 80,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
