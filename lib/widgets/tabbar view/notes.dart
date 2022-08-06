import 'package:flutter/material.dart';

import '../customlisttabbar.dart';
import '../subjects.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(
      followlink1: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Subject(
                      title: 'First Semester',
                    )));
      },
      followlink2: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Subject(
                      title: 'Second Semester',
                    )));
      },
      followlink3: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Subject(
                      title: 'Third Semester',
                    )));
      },
      followlink4: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Subject(
                      title: 'Fourth Semester',
                    )));
      },
      followlink5: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Subject(
                      title: 'Fifth Semester',
                    )));
      },
      followlink6: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Subject(
                      title: 'Sixth Semester',
                    )));
      },
      followlink7: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Subject(
                      title: 'Seventh Semester',
                    )));
      },
      followlink8: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Subject(
                      title: 'Eight Semester',
                    )));
      },
    );
  }
}
