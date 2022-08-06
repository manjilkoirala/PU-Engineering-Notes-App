import 'package:flutter/material.dart';
import 'package:punotes/Screen/pdfview.dart';
import 'package:punotes/Screen/tabbar.dart';

import '../customlisttabbar.dart';

class SyllabusList extends StatelessWidget {
  const SyllabusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(
      followlink1: () {
        if (titletext == 'Computer') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PDFViewerPage(
                        title: "First Semester Computer",
                        path: 'assest/files/syllabus/computer/1syllabus.pdf',
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
                        path: 'assest/files/syllabus/computer/2syllabus.pdf',
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
                        path: 'assest/files/syllabus/computer/3syllabus.pdf',
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
                        path: 'assest/files/syllabus/computer/4syllabus.pdf',
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
                        path: 'assest/files/syllabus/computer/5syllabus.pdf',
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
                        path: 'assest/files/syllabus/computer/6syllabus.pdf',
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
                        path: 'assest/files/syllabus/computer/7syllabus.pdf',
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
                        path: 'assest/files/syllabus/computer/8syllabus.pdf',
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
    );
  }
}
