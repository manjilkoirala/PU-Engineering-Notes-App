// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pufoe_notes/Screen/pdfview.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';
import 'package:pufoe_notes/model/notes/civilnotes.dart';
import 'package:pufoe_notes/widgets/ad_helper.dart';
// import 'package:pufoe_notes/model/notes/electricalnotes.dart';
import 'package:pufoe_notes/widgets/appbar.dart';

import '../model/notes/computernotes.dart';
import '../model/notes/notemodel.dart';
import 'customlisttabbar.dart';

class Subject extends StatelessWidget {
  final title;

  const Subject({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var func;
    if (titletext == "Computer") {
      if (title == "First Semester") {
        func = Computer.computer1st;
      } else if (title == "Second Semester") {
        func = Computer.computer2nd;
      } else if (title == "Third Semester") {
        func = Computer.computer3rd;
      } else if (title == "Fourth Semester") {
        func = Computer.computer4th;
      } else if (title == "Fifth Semester") {
        func = Computer.computer5th;
      } else if (title == "Sixth Semester") {
        func = Computer.computer6th;
      } else if (title == "Seventh Semester") {
        func = Computer.computer7th;
      } else if (title == "Eighth Semester") {
        func = Computer.computer8th;
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
      if (title == "Eighth Semester") {
        func = Civil.civil8th;
      }
    }

    return Scaffold(
      bottomNavigationBar:
          SizedBox(height: 60, child: AdWidget(ad: getbannerAd())),
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
    return CustomTile(
      customtext: item.subjecttitle,
      followlink: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PDFViewerPageURL(
                      link: item.path,
                      title: item.subjecttitle,
                    )));
      },
    );
  }
}
