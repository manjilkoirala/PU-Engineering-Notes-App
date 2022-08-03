//  prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:punotes/Screen/pdfview.dart';
import 'package:punotes/Screen/subjects.dart';
import 'package:punotes/widgets/appbar.dart';

import '../widgets/customlisttabbar.dart';

var titletext;

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: MyAppBar(
          height: 80.0,
          title: titletext,
          button: const TabBar(tabs: [
            Text(
              'Syllabus',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Notes',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Questions',
              style: TextStyle(fontSize: 18),
            )
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TabBarView(children: [
            //syllabus
            CustomListView(
              followlink1: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPageURL(
                                title: "First Semester Computer",
                                link:
                                    'http://africau.edu/images/default/sample.pdf',
                              )));
                }
              },
              followlink2: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Second Semester Computer",
                                path:
                                    'assest/files/syllabus/computer/2syllabus.pdf',
                              )));
                }
              },
              followlink3: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Third Semester Computer",
                                path:
                                    'assest/files/syllabus/computer/3syllabus.pdf',
                              )));
                }
                if (titletext == 'Civil') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Third Semester Civil",
                                path: 'assest/files/syllabus/civil/3civil.pdf',
                              )));
                }
              },
              followlink4: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Fourth Semester Computer",
                                path:
                                    'assest/files/syllabus/computer/4syllabus.pdf',
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
              },
              followlink5: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Fifth Semester Computer",
                                path:
                                    'assest/files/syllabus/computer/5syllabus.pdf',
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
                                path:
                                    'assest/files/syllabus/computer/6syllabus.pdf',
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
                                path:
                                    'assest/files/syllabus/computer/7syllabus.pdf',
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
                                path:
                                    'assest/files/syllabus/computer/8syllabus.pdf',
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
            ),

            //Syllabus

            //Notes

            CustomListView(
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
            ),

            //Notes

            //Question

            CustomListView(
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
                                    'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/question%20bank%202nd%20(2).pdf?alt=media&token=2f551dbd-9e67-4d9c-bb90-7dd1f8d16e43',
                              )));
                }
              },
              followlink3: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Third Semester Computer",
                                path:
                                    'assest/files/syllabus/computer/3syllabus.pdf',
                              )));
                }
                if (titletext == 'Civil') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Third Semester Civil",
                                path: 'assest/files/syllabus/civil/3civil.pdf',
                              )));
                }
              },
              followlink4: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Fourth Semester Computer",
                                path:
                                    'assest/files/syllabus/computer/4syllabus.pdf',
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
              },
              followlink5: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Fifth Semester Computer",
                                path:
                                    'assest/files/syllabus/computer/5syllabus.pdf',
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
                                path:
                                    'assest/files/syllabus/computer/6syllabus.pdf',
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
                                path:
                                    'assest/files/syllabus/computer/7syllabus.pdf',
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
                                path:
                                    'assest/files/syllabus/computer/8syllabus.pdf',
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
            ),
          ]),
        ),
      ),
    );
  }
}
