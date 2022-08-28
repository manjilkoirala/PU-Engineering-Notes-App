import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';
import 'package:pufoe_notes/widgets/ad_helper.dart';

import 'package:pufoe_notes/widgets/appbar.dart';

import '../Screen/pdfview.dart';

import 'customlisttabbar.dart';

class Subject extends StatelessWidget {
  final title;

  const Subject({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var semester, faculty;
    if (titletext == "Computer") {
      faculty = 'ComputerNotes';
    } else if (titletext == "Civil") {
      faculty = 'CivilNotes';
    } else if (titletext == "Electrical") {
      faculty = 'Electrical';
    } else if (titletext == "Electronics") {
      faculty = 'Electronics';
    }
    if (title == "First Semester") {
      semester = 'FirstSemesterNotes';
    } else if (title == "Second Semester") {
      semester = 'SecondSemesterNotes';
    } else if (title == "Third Semester") {
      semester = 'ThirdSemesterNotes';
    } else if (title == "Fourth Semester") {
      semester = 'FourthSemesterNotes';
    } else if (title == "Fifth Semester") {
      semester = 'FifthSemesterNotes';
    } else if (title == "Sixth Semester") {
      semester = 'SixthSemesterNotes';
    } else if (title == "Seventh Semester") {
      semester = 'SeventhSemesterNotes';
    } else if (title == "Eighth Semester") {
      semester = 'EighthSemesterNotes';
    }

    final CollectionReference _questions = FirebaseFirestore.instance
        .collection('Notes')
        .doc('Notes')
        .collection(faculty)
        .doc('FirstSemester')
        .collection(semester);

    return Scaffold(
      bottomNavigationBar:
          SizedBox(height: 60, child: AdWidget(ad: getbannerAd())),
      appBar: MyAppBar(title: title, height: 50.0),
      body: StreamBuilder(
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
      ),
    );
  }
}
