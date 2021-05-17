import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {
  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  bool _hideAndShow = false;
  bool _isSelected;
  bool _isOn = false;
  bool _isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Estados')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedOpacity(
              opacity: _hideAndShow ? 1 : 0,
              duration: Duration(milliseconds: 700),
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 48),
                elevation: 14,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset(
                    'assets/images/2.png',
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            CheckboxListTile(
              tristate: true,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('Aceptar terminos y condiciones'),
              value: _isSelected,
              onChanged: (value) {
                _isSelected = value;
                refreshScreen();
              },
            ),
            SwitchListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('Habilitar'),
              value: _isOn,
              onChanged: (value) {
                _isOn = value;
                refreshScreen();
              },
            ),
            ElevatedButton(
              onPressed: _isOn
                  ? () {
                      _hideAndShow = !_hideAndShow;
                      print('mostrar $_hideAndShow');
                      refreshScreen();
                    }
                  : null,
              child: Text('Click me'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 32),
                textStyle: TextStyle(fontSize: 32),
              ),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up, size: 64),
              color: _isLike ? Colors.blue : Colors.grey,
              onPressed: () {
                _isLike = !_isLike;
                print('like $_isLike');
                refreshScreen();
              },
            ),
          ],
        ),
      ),
    );
  }

  void refreshScreen() {
    setState(() {});
  }
}

// GestureDetector(
//   onTap: () {
//     print('Click on card');
//   },
//   onLongPress: () {
//     print('Long click on card');
//   },
//   child: Card(
//     color: Colors.grey,
//     child: Container(
//       padding: EdgeInsets.all(24),
//       child: Column(
//         children: [
//           Text('Juan Perez'),
//           Text('Edad 32'),
//         ],
//       ),
//     ),
//   ),
// ),
// InkWell(
//   child: Container(
//     width: double.infinity,
//     padding: EdgeInsets.all(24),
//     child: Text('Juan perez'),
//   ),
//   onTap: () {},
//   onLongPress: () {},
// ),
