// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:pufoe_notes/Screen/pdfview.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';
import 'package:pufoe_notes/model/notes/notemodel.dart';
import 'package:pufoe_notes/model/syllabusmodel.dart';
import 'package:pufoe_notes/widgets/customlisttabbar.dart';

class SyllabusList extends StatelessWidget {
  const SyllabusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var func;
    if (titletext == 'Civil') {
      func = Syllabus.civil;
    } else if (titletext == 'Computer') {
      func = Syllabus.computer;
    } else if (titletext == 'Electrical') {
      func = Syllabus.electrical;
    } else if (titletext == 'Electronics') {
      func = Syllabus.electronics;
    }
    return ListView.builder(
      itemCount: func.length,
      itemBuilder: (context, index) {
        return Syllabusbuilder(item: func[index]);
      },
    );
  }
}

class Syllabusbuilder extends StatelessWidget {
  const Syllabusbuilder({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Notes item;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      customtext: item.subjecttitle,
      followlink: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PDFViewerPage(
                      path: item.path,
                      title: item.subjecttitle,
                    )));
      },
    );
  }
}
