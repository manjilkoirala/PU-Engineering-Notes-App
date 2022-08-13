import 'package:flutter/material.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';

import '../customlisttabbar.dart';
import '../subjects.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(
      followlink1: () {
        if (titletext == "Electronics" || titletext == "Electrical") {
          Navigator.canPop(context);
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Subject(
                        title: 'First Semester',
                      )));
        }
      },
      followlink2: () {
        if (titletext == "Electronics" || titletext == "Electrical") {
          Navigator.canPop(context);
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Subject(
                        title: 'Second Semester',
                      )));
        }
      },
      followlink3: () {
        if (titletext == "Electronics" || titletext == "Electrical") {
          Navigator.canPop(context);
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Subject(
                        title: 'Third Semester',
                      )));
        }
      },
      followlink4: () {
        if (titletext == "Electronics" || titletext == "Electrical") {
          Navigator.canPop(context);
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Subject(
                        title: 'Fourth Semester',
                      )));
        }
      },
      followlink5: () {
        if (titletext == "Electronics" || titletext == "Electrical") {
          Navigator.canPop(context);
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Subject(
                        title: 'Fifth Semester',
                      )));
        }
      },
      followlink6: () {
        if (titletext == "Electronics" || titletext == "Electrical") {
          Navigator.canPop(context);
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Subject(
                        title: 'Sixth Semester',
                      )));
        }
      },
      followlink7: () {
        if (titletext == "Electronics" || titletext == "Electrical") {
          Navigator.canPop(context);
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Subject(
                        title: 'Seventh Semester',
                      )));
        }
      },
      followlink8: () {
        if (titletext == "Electronics" || titletext == "Electrical") {
          Navigator.canPop(context);
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Subject(
                        title: 'Eighth Semester',
                      )));
        }
      },
    );
  }
}
