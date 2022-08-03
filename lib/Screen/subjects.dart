// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:punotes/Screen/tabbar.dart';
import 'package:punotes/widgets/appbar.dart';

import '../model/notes.dart';
import '../widgets/customlisttabbar.dart';

class Subject extends StatelessWidget {
  final title;

  const Subject({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var func;
    if (titletext == "Computer") {
      if (title == "First Semester") {
        func = Computer.computer1st;
      }
      if (title == "Second Semester") {
        func = Computer.computer2nd;
      }
      if (title == "Third Semester") {
        func = Computer.computer3rd;
      }
      if (title == "Fourth Semester") {
        func = Computer.computer4th;
      }
      if (title == "Fifth Semester") {
        func = Computer.computer5th;
      }
      if (title == "Sixth Semester") {
        func = Computer.computer6th;
      }
      if (title == "Seventh Semester") {
        func = Computer.computer7th;
      }
      if (title == "Eight Semester") {
        func = Computer.computer7th;
      }
    }

    return Scaffold(
      appBar: MyAppBar(title: title, height: 50.0),
      body: ListView.builder(
        itemCount: func.length,
        itemBuilder: (context, index) {
          return SubjectList(item: func[index]);
        },
      ),
    );
  }
}

class SubjectList extends StatelessWidget {
  const SubjectList({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Notes item;

  @override
  Widget build(BuildContext context) {
    return CustomTile(customtext: item.subjecttitle);
  }
}
