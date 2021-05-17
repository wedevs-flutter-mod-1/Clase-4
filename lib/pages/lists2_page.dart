import 'package:flutter/material.dart';
import 'package:init/models/estudiante.dart';

import 'detail_student_page.dart';

class List2Page extends StatefulWidget {
  @override
  _List2PageState createState() => _List2PageState();
}

class _List2PageState extends State<List2Page> {
  final _students = students;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas 2'),
        actions: [
          IconButton(
            icon: Icon(Icons.golf_course),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (newContext, pos) {
          final est = _students[pos];

          return Dismissible(
            key: UniqueKey(),
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.blue),
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {}
              if (direction == DismissDirection.startToEnd) {}
              if (!est.isFavorite) {
                _students.removeAt(pos);
              }
              setState(() {});
            },
            child: Card(
              child: ListTile(
                title: Text(est.name),
                subtitle: Text(est.email),
                // leading: GestureDetector(
                //   child: Icon(
                //     Icons.favorite,
                //     color: est.isFavorite ? Colors.red : Colors.grey,
                //   ),
                //   onTap: () {
                //     est.isFavorite = !est.isFavorite;
                //     setState(() {});
                //   },
                // ),
                // leading: Image.asset(est.pathImage),
                leading: Hero(
                  tag: est.id,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(est.pathImage),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: Duration(seconds: 2),
                        reverseTransitionDuration: Duration(seconds: 2),
                        pageBuilder: (_, __, ___) => DetailStudentPage(
                          student: est,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _students.add(
            Student(
              id: _students.length + 1,
              name: 'Student test',
              description: '',
              email: 's@s.com',
              pathImage: 'assets/images/1.png',
            ),
          );
          setState(() {});
        },
      ),
    );
  }
}
