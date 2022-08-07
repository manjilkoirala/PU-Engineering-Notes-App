import 'package:flutter/material.dart';
import 'package:punotes/Screen/tabbar.dart';
import 'package:punotes/model/questionsmodel.dart';

import 'package:punotes/widgets/subjects.dart';

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
    }

    return ListView.builder(
      itemCount: func.length,
      itemBuilder: (context, index) {
        return SubjectList(item: func[index]);
      },
    );
  }
}
