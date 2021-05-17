import 'package:flutter/material.dart';
import 'package:init/models/estudiante.dart';

class DetailStudentPage extends StatelessWidget {
  DetailStudentPage({@required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(student.name)),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Hero(
              tag: student.id,
              child: Image.asset(
                student.pathImage,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Text(
                student.name,
                style: TextStyle(fontSize: 26),
              ),
            ),
            Center(
              child: Text(
                student.email,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 32),
            Text(student.description)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
