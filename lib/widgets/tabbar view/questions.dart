// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';
import 'package:pufoe_notes/model/questionsmodel.dart';

import 'package:pufoe_notes/widgets/subjects.dart';

class QuestionsList extends StatelessWidget {
  const QuestionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var func;
    if (titletext == 'Civil') {
      func = Question.civil;
    } else if (titletext == 'Computer') {
      func = Question.computer;
    } else if (titletext == 'Electrical') {
      func = Question.electrical;
    } else if (titletext == 'Electronics') {
      func = Question.electronics;
    }

    return ListView.builder(
      itemCount: func.length,
      itemBuilder: (context, index) {
        return SubjectList(item: func[index]);
      },
    );
  }
}
