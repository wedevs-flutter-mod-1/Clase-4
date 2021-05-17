import 'package:flutter/material.dart';

class HolaMundoPage extends StatefulWidget {
  @override
  _HolaMundoPageState createState() => _HolaMundoPageState();
}

class _HolaMundoPageState extends State<HolaMundoPage> {
  var contador = '';
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              contador,
              style: TextStyle(fontSize: 32),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      contador += '1';
                      refrescarPantalla();
                    },
                    child: Text('1')),
                FloatingActionButton(
                    onPressed: () {
                      contador += '2';
                      refrescarPantalla();
                    },
                    child: Text('2')),
                FloatingActionButton(
                  onPressed: () {
                    contador += '3';
                    refrescarPantalla();
                  },
                  child: Text('3'),
                ),
                FloatingActionButton(onPressed: () {}, child: Text('+')),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: () {}, child: Text('4')),
                FloatingActionButton(onPressed: () {}, child: Text('5')),
                FloatingActionButton(onPressed: () {}, child: Text('6')),
                FloatingActionButton(onPressed: () {}, child: Text('-')),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: () {}, child: Text('7')),
                FloatingActionButton(onPressed: () {}, child: Text('8')),
                FloatingActionButton(onPressed: () {}, child: Text('9')),
                FloatingActionButton(onPressed: () {}, child: Text('*')),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                FloatingActionButton(onPressed: () {}, child: Text('=')),
                FloatingActionButton(onPressed: () {}, child: Text('0')),
                FloatingActionButton(onPressed: () {}, child: Text('/')),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador = '';
          refrescarPantalla();
        },
        child: createStart(Icons.delete),
      ),
    );
  }

  Widget createStart(IconData icon) {
    return Icon(icon);
  }

  void refrescarPantalla() {
    // Volvemos a ejecutar el metodo build
    setState(() {});
  }
}

// class HolaMundoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: () {
//         setState((){});
//       },
//     );
//   }
// }
