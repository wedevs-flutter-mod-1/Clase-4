import 'package:flutter/material.dart';

class ColPage extends StatelessWidget {
  final double widthHeight = 250;

  final nombres = [
    'juan',
    'alberto',
    'maria',
    'roberto',
    'alberto',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Col Page')),
      body: Container(
        // color: Colors.purple,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: nombres.map((e) => Text(e)).toList(),
          // children: [
            // Image(
            //   image: AssetImage('assets/images/1.png'),
            //   width: widthHeight,
            //   height: widthHeight,
            //   fit: BoxFit.contain,
            // ),
          //   Text(
          //     'Bienvenido',
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 38,
          //       color: Colors.red,
          //     ),
          //   ),
          //   Container(
          //     padding: EdgeInsets.symmetric(horizontal: 64),
          //     child: Text(
          //       'Bienvenido a la lista de personajes mas queridos',
          //       textAlign: TextAlign.center,
          //       style: TextStyle(color: Colors.grey),
          //     ),
          //   ),
          //   // Card(
          //   //   elevation: 14,
          //   //   child: Image.asset(
          //   //     'assets/images/2.png',
          //   //     width: widthHeight,
          //   //     height: widthHeight,
          //   //     fit: BoxFit.contain,
          //   //   ),
          //   // ),
          //   // Card(
          //   //   elevation: 14,
          //   //   child: Image.network(
          //   //     'https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6e/Roshan_model.png/revision/latest/scale-to-width-down/250?cb=20180510104035',
          //   //     width: widthHeight,
          //   //     height: widthHeight,
          //   //     fit: BoxFit.contain,
          //   //   ),
          //   // ),
          // ],
        ),
      ),
    );
  }
}
