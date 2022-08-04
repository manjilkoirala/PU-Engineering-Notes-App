// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:punotes/Screen/tabbar.dart';
import 'package:punotes/model/civilnotes.dart';
import 'package:punotes/widgets/appbar.dart';

import '../model/computernotes.dart';
import '../model/notemodel.dart';
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
    } else if (titletext == "Civil") {
      if (title == "First Semester") {
        func = Civil.civil1st;
      }
      if (title == "Second Semester") {
        func = Civil.civil2nd;
      }
      if (title == "Third Semester") {
        func = Civil.civil3rd;
      }
      if (title == "Fourth Semester") {
        func = Civil.civil4th;
      }
      if (title == "Fifth Semester") {
        func = Civil.civil5th;
      }
      if (title == "Sixth Semester") {
        func = Civil.civil6th;
      }
      if (title == "Seventh Semester") {
        func = Civil.civil7th;
      }
      if (title == "Eight Semester") {
        func = Civil.civil8th;
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
