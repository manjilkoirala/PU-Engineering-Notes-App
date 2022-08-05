//  prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:punotes/Screen/pdfview.dart';
import 'package:punotes/widgets/subjects.dart';
import 'package:punotes/model/notemodel.dart';
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
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Notes',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Questions',
              style: TextStyle(fontSize: 16),
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
                          builder: (context) => const PDFViewerPage(
                                title: "First Semester Computer",
                                path:
                                    'assest/files/syllabus/computer/1syllabus.pdf',
                              )));
                }
              },
              followlink2: () {
                if (titletext == 'Computer' || titletext == 'Electrical') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Second Semester Computer & Electrical",
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
                } else if (titletext == 'Civil') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Third Semester Civil",
                                path: 'assest/files/syllabus/civil/3civil.pdf',
                              )));
                } else if (titletext == 'Electrical') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Third Semester Electrical",
                                path:
                                    'assest/files/syllabus/electrical/3electrical.pdf',
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
                } else if (titletext == 'Civil') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Fourth Semester Civil",
                                path: 'assest/files/syllabus/civil/4civil.pdf',
                              )));
                } else if (titletext == 'Electrical') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Fourth Semester Electrical",
                                path:
                                    'assest/files/syllabus/electrical/4electrical.pdf',
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
                } else if (titletext == 'Civil') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Fifth Semester Civil",
                                path: 'assest/files/syllabus/civil/5civil.pdf',
                              )));
                } else if (titletext == 'Electrical') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Fifth Semester Electrical",
                                path:
                                    'assest/files/syllabus/electrical/5electrical.pdf',
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
                } else if (titletext == 'Civil') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Sixth Semester Civil",
                                path: 'assest/files/syllabus/civil/6civil.pdf',
                              )));
                } else if (titletext == 'Electrical') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Sixth Semester Electrical",
                                path:
                                    'assest/files/syllabus/electrical/6electrical.pdf',
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
                } else if (titletext == 'Civil') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Seventh Semester Civil",
                                path: 'assest/files/syllabus/civil/7civil.pdf',
                              )));
                } else if (titletext == 'Electrical') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Seventh Semester Electrical",
                                path:
                                    'assest/files/syllabus/electrical/7electrical.pdf',
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
                } else if (titletext == 'Civil') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Eight Semester Civil",
                                path: 'assest/files/syllabus/civil/8civil.pdf',
                              )));
                } else if (titletext == 'Electrical') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PDFViewerPage(
                                title: "Eight Semester Electrical",
                                path:
                                    'assest/files/syllabus/electrical/8electrical.pdf',
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
                                    'https://firebasestorage.googleapis.com/v0/b/mynotes-flutter-my.appspot.com/o/Computer_QB%2F2nd%20semester.pdf?alt=media&token=4e47110d-6c4c-42d6-bea9-8dbdd57e438c',
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
