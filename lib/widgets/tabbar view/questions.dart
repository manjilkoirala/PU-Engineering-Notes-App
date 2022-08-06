import 'package:flutter/material.dart';
import 'package:punotes/Screen/pdfview.dart';
import 'package:punotes/Screen/tabbar.dart';
import 'package:punotes/widgets/customlisttabbar.dart';

class QuestionsList extends StatelessWidget {
  const QuestionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(
      //Computer
      followlink1: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => PDFViewerPageURL(
        //               title: 'First Semester Computer',
        //             )));
      },
      followlink2: () {
        if (titletext == 'Computer') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPageURL(
                        title: "Second Semester Computer",
                        link:
                            'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/Computer_QB%2F2nd%20semester.pdf?alt=media&token=4e47110d-6c4c-42d6-bea9-8dbdd57e438c',
                      )));
        } else if (titletext == 'Civil') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPageURL(
                        title: "Second Semester Civil",
                        link:
                            'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/civil_QB%2F2nd%20sem%20civil%20qb.pdf?alt=media&token=6d8a50e1-b156-4610-876f-5f3da4d89cbe',
                      )));
        }
      },
      followlink3: () {
        if (titletext == 'Computer') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPageURL(
                        title: "Third Semester Computer",
                        link:
                            'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/Computer_QB%2F3rd%20Semester.pdf?alt=media&token=873c184d-6aa1-4e3b-bc01-54f4da61e751',
                      )));
        } else if (titletext == 'Civil') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Third Semester Civil",
                        path: 'assest/files/syllabus/civil/3civil.pdf',
                      )));
        }
        if (titletext == 'Electrical') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPageURL(
                        title: "Third Semester Electrical",
                        link:
                            'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/Electrical_QB%2F3rd%20electrical.pdf?alt=media&token=bb30efc5-8b97-4fc7-8510-bb8f1394bb07',
                      )));
        }
      },
      followlink4: () {
        if (titletext == 'Computer') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPageURL(
                        title: "Fourth Semester Computer",
                        link:
                            'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/Computer_QB%2F4th%20semester.pdf?alt=media&token=b0d3b4dd-2266-4f7b-96e9-2781d732910b',
                      )));
        }
        if (titletext == 'Civil') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Fourth Semester Civil",
                        path: 'assest/files/syllabus/civil/4civil.pdf',
                      )));
        }
        if (titletext == 'Electrical') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPageURL(
                        title: "Fourth Semester Computer",
                        link:
                            'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/Electrical_QB%2F4th%20electrical.pdf?alt=media&token=8be305f1-6a53-4281-8cf8-0c7df1919ee6',
                      )));
        }
      },
      followlink5: () {
        if (titletext == 'Computer') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPageURL(
                        title: "Fifth Semester Computer",
                        link:
                            'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/Computer_QB%2F5th%20semester.pdf?alt=media&token=03226c49-3d2e-4842-b3ad-b9bb521acd25',
                      )));
        }
        if (titletext == 'Civil') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Fifth Semester Civil",
                        path: 'assest/files/syllabus/civil/5civil.pdf',
                      )));
        }
      },
      followlink6: () {
        if (titletext == 'Computer') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Sixth Semester Computer",
                        path: 'assest/files/syllabus/computer/6syllabus.pdf',
                      )));
        }
        if (titletext == 'Civil') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Sixth Semester Civil",
                        path: 'assest/files/syllabus/civil/6civil.pdf',
                      )));
        }
      },
      followlink7: () {
        if (titletext == 'Computer') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Seventh Semester Computer",
                        path: 'assest/files/syllabus/computer/7syllabus.pdf',
                      )));
        }
        if (titletext == 'Civil') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Seventh Semester Civil",
                        path: 'assest/files/syllabus/civil/7civil.pdf',
                      )));
        }
      },

      followlink8: () {
        if (titletext == 'Computer') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Eight Semester Computer",
                        path: 'assest/files/syllabus/computer/8syllabus.pdf',
                      )));
        }
        if (titletext == 'Civil') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "Eight Semester Civil",
                        path: 'assest/files/syllabus/civil/8civil.pdf',
                      )));
        }
      },
    );
  }
}
