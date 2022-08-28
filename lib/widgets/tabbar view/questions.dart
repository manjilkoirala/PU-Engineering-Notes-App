// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pufoe_notes/Screen/pdfview.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';
import 'package:pufoe_notes/widgets/customlisttabbar.dart';

class QuestionsList extends StatelessWidget {
  const QuestionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name;
    if (titletext == 'Civil') {
      name = 'CivilQuestions';
    } else if (titletext == 'Computer') {
      name = 'ComputerQuestions';
    } else if (titletext == 'Electrical') {
      name = 'ElectricalQuestions';
    } else if (titletext == 'Electronics') {
      name = 'ElectronicsQuestions';
    }
    final CollectionReference _questions = FirebaseFirestore.instance
        .collection('Questions')
        .doc('Questions')
        .collection(name);

    return StreamBuilder(
      stream: _questions.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        if (!streamSnapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
            itemCount: streamSnapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
              return CustomTile(
                customtext: documentSnapshot['title'],
                followlink: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PDFViewerPageURL(
                                title: documentSnapshot['title'],
                                link: documentSnapshot['path'],
                              )));
                },
              );
            });
      },
    );
  }
}
